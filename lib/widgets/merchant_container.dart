import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/models/merchants_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MerchantContainer extends StatelessWidget {
  const MerchantContainer({super.key, required this.merchant});
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 82.h,
      // width: 30.w,
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
                    // fit: BoxFit.cover,
                  ),
                ),
                merchant.online
                    ? Positioned(
                        top: 0,
                        right: 5.sp,
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
                fontSize: 12.sp,
                // 16.sp emulator
                fontWeight: FontWeight.w500,
                color: Pallete.textColor),
          ),
        ],
      ),
    );
  }
}
