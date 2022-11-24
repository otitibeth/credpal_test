import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 309.w,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
        controller: controller,
        cursorColor: Pallete.textColor,
        decoration: InputDecoration(
          fillColor: Pallete.searchGrey,
          filled: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
          hintText: 'Search for products or stores',
          hintStyle: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: Pallete.searchText),
          prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 0.sp),
              child: SvgPicture.asset('assets/svg/search.svg')),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ScreenUtil().radius(30)),
              borderSide:
                  const BorderSide(color: Pallete.searchGrey, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ScreenUtil().radius(15)),
              borderSide:
                  const BorderSide(color: Pallete.searchGrey, width: 1)),
        ),
      ),
    );
  }
}
