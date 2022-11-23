import 'package:credpal_test/Helpers/constants/app_colors.dart';
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
      padding: EdgeInsets.only(left: 20.sp, right: 16.sp),
      height: 189.h,
      width: double.infinity,
      color: Pallete.appbarColor,
      child: Row(
        children: [
          SizedBox(
              width: 125.w,
              child: Text(
                'Pay later everywhere',
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w900,
                    color: Pallete.textColor,
                    height: 2.sp),
              )),
          Padding(
            padding: EdgeInsets.only(top: 45.sp),
            child: SizedBox(
                height: 17.h,
                width: 17.w,
                child: SvgPicture.asset('assets/svg/exclaim.svg')),
          ),
          const Spacer(),
          Column(
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
              const CustomButton()
            ],
          )
        ],
      ),
    );
  }
}
