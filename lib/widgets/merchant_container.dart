import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/Helpers/global_variable.dart';
import 'package:credpal_test/models/merchants_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MerchantContainer extends StatelessWidget {
  const MerchantContainer({super.key, required this.merchant});
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82.h,
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: merchant.color),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    merchant.logo,
                  ),
                ),
                merchant.online
                    ? Positioned(
                        top: 0,
                        right: isMobile(context)
                            ? 5.sp
                            : isDesktop(context)
                                ? 75.sp
                                : 23.sp,
                        // 12.sp (emulator)
                        // bottom: 3.sp,
                        child: Container(
                          height: 15.h,
                          width: 15.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Pallete.defaultWhite),
                          child: SvgPicture.asset(
                              'assets/svg/Notification dot.svg'),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            merchant.name,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: !isMobile(context) ? 16.sp : 12.sp,
                fontWeight: FontWeight.w500,
                color: Pallete.textColor),
          ),
        ],
      ),
    );
  }
}
