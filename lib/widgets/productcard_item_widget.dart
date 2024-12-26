import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/theme/app_decoration.dart';
import 'package:bidbuyweb/theme/custom_text_style.dart';
import 'package:bidbuyweb/theme/theme_helper.dart';

import 'custom_image_view.dart';
import '../domain/models/productcard_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: appTheme.gray200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Container(
            height: 172.v,
            width: 171.h,
            decoration: AppDecoration.fillGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: productcardItemModelObj?.timeLeft,
                  height: 172.v,
                  width: 171.h,
                  radius: BorderRadius.circular(
                    11.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 101.h,
                    margin: EdgeInsets.only(top: 9.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPrimary,
                    child: Text(
                      productcardItemModelObj.timeLeft1!,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          productcardItemModelObj.productName!,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 3.v),
        Row(
          children: [
            Text(
              productcardItemModelObj.price!,
              style: theme.textTheme.titleLarge,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 4.v,
                bottom: 4.v,
              ),
              child: Text(
                productcardItemModelObj.bidCount!,
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: 3.v),
        Row(
          children: [
            Text(
              productcardItemModelObj.sellerName!,
              style: theme.textTheme.bodySmall,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                productcardItemModelObj.sellerRating!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
