import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/Helpers/global_variable.dart';
import 'package:credpal_test/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const ngn = '\u20A6';
    return Container(
      padding: EdgeInsets.only(left: 20.sp, right: 16.sp, top: 18.sp),
      height: 180.h,
      width: double.infinity,
      color: Pallete.appbarColor,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pay later',
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w900,
                    color: Pallete.textColor,
                    height: 2.sp),
              ),
              Text(
                'everywhere',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w900,
                  color: Pallete.textColor,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: !isMobile(context) ? 46.sp : 52.sp,
                left: !isMobile(context) ? 0.sp : 3.sp),
            child: SizedBox(
                height: 17.h,
                width: 17.w,
                child: SvgPicture.asset('assets/svg/exclaim.svg')),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 12.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Shopping limit: ${ngn}0',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Pallete.subText,
                      fontFamily: 'Avenir'),
                ),
                SizedBox(height: 10.h),
                CustomButton(
                  width: isMobile(context)
                      ? 134.w
                      : isDesktop(context)
                          ? 70.w
                          : 90.w,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
