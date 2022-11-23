import 'package:credpal_test/Helpers/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      this.color,
      this.height,
      this.text,
      this.width});

  final double? borderRadius;
  final Color? color;
  final double? width;
  final double? height;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width ?? 134.w,
      height: height ?? 37.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.sp),
          color: color ?? Pallete.blueColor),
      child: Text(
        text ?? 'Activate Credit',
        style: TextStyle(
            fontFamily: 'Axiforma',
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color: Pallete.defaultWhite),
      ),
    );
  }
}
