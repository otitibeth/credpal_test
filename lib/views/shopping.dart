import 'package:credpal_test/Helpers/constants/app_colors.dart';
import 'package:credpal_test/views/product_container.dart';
import 'package:credpal_test/widgets/appbar_widget.dart';
import 'package:credpal_test/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: [
            const AppBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: SizedBox(
                height: 82.h,
                width: 414.w,
                child: Row(children: [
                  const SearchField(),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(7.sp),
                    height: 45.h,
                    width: 45.h,
                    decoration: BoxDecoration(
                        color: Pallete.scanGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset('assets/svg/scan.svg'),
                  )
                ]),
              ),
            ),
            Container(
              height: 405.h,
              color: Pallete.searchGrey,
              child: ProductContainer(),
            )
          ],
        ),
      )),
    );
  }
}
