import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/Helpers/global_variable.dart';
import 'package:credpal_test/Helpers/lists.dart';
import 'package:credpal_test/widgets/merchant_container.dart';
import 'package:credpal_test/widgets/product_container.dart';
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
                  !isMobile(context)
                      ? SizedBox(
                          width: 40.w,
                        )
                      : const Spacer(),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 14.sp, left: 21.sp),
                      height: 405.h,
                      width: 600.w,
                      color: Pallete.searchGrey,
                      child: GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) =>
                              ProductContainer(product: products[index]))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
              // .copyWith(bottom: 0.sp),
              child: Row(
                children: [
                  Text(
                    'Featured Merchants',
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        color: Pallete.titleText),
                  ),
                  const Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(0.sp)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontFamily: 'Axiforma',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Pallete.blueColor),
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 400.h,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: merchants.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isDesktop(context)
                        ? 6
                        : isMedium(context)
                            ? 5
                            : 4,
                    childAspectRatio:
                        isDesktop(context) ? 2.9.sp / 2.sp : 1.9.sp / 2.sp,
                  ),
                  itemBuilder: (context, index) =>
                      MerchantContainer(merchant: merchants[index]),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
