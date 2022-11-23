import 'package:credpal_test/Helpers/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const ngn = '\u20A6';
    return SizedBox(
      width: 161.w,
      height: 174.h,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10.sp),
            width: 161.w,
            height: 174.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Pallete.defaultWhite),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5.sp, bottom: 13.sp),
                  width: 112.w,
                  height: 96.h,
                  child: Image.asset('assets/images/nokiaG20.png'),
                ),
                Text(
                  'Nokia G20',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: Pallete.textColor),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 4.sp, top: 8.sp, right: 14.sp),
                      child: Text(
                        '$ngn 39,780',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: Pallete.blueColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.sp,
                      ),
                      child: Text(
                        '$ngn 39,780',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Pallete.greyColor,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 6.sp,
            left: 7.sp,
            child: Container(
              width: 50.w,
              height: 50.h,
              decoration: const BoxDecoration(
                  color: Pallete.defaultWhite, shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: SvgPicture.asset('assets/svg/Pay40.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
