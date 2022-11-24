import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    const ngn = '\u20A6';
    final value = NumberFormat("#,##0", "en_US");
    String productName = product.productName;
    String newProductName = productName;

    // String replaceCharAt(String oldString, int index, String newChar) {
    //   return oldString.substring(0, index) +
    //       newChar +
    //       oldString.substring(index + 1);
    // }

    for (int i = 17; i < productName.length; i++) {
      newProductName = productName.replaceRange(17, productName.length, "...");
    }
    return SizedBox(
      width: 161.w,
      height: 174.h,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(right: 24.sp),
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
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 5.sp,
                    // bottom: 13.sp
                  ),
                  width: 135.w,
                  height: 105.h,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  newProductName,
                  // product.productName,
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
                        '$ngn ${value.format(product.amount)}',
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
                        '$ngn ${value.format(product.strikedAmount)}',
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
                child: SvgPicture.asset(product.sellerLogo!),
              ),
            ),
          )
        ],
      ),
    );
  }
}
