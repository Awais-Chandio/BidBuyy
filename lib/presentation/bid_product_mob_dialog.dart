
// ignore_for_file: must_be_immutable
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BidProductMobDialog extends StatefulWidget {
  const BidProductMobDialog({Key? key})
      : super(
          key: key,
        );

  @override
  BidProductMobDialogState createState() => BidProductMobDialogState();
 
}

class BidProductMobDialogState extends State<BidProductMobDialog> {
  TextEditingController priceController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildBiddingPopup(context),
    );
  }

  /// Section Widget
  Widget _buildBiddingPopup(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 13.h,
        right: 16.h,
        bottom: 1987.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 30.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_place_your_bid".tr,
                style: CustomTextStyles.headlineSmallInterBlack900SemiBold,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIcRoundClose,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 5.v),
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 35.h),
              child: Row(
                children: [
                  Text(
                    "lbl_3_bids2".tr,
                    style: CustomTextStyles.bodyLargePoppinsBlack900_1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "msg_time_left_4d_20h2".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 102.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 12.v,
                ),
                decoration:
                    AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_pkr".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_1000".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: 102.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 12.v,
                ),
                decoration:
                    AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_pkr".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_1300".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: 102.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 12.v,
                ),
                decoration:
                    AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_pkr".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_1500".tr,
                        style:
                            CustomTextStyles.labelLargePoppinsPrimaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray700,
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_your_max_bid".tr,
              style: CustomTextStyles.titleMediumPoppinsBlack900,
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.4,
              child: Text(
                "msg_enter_pkr_1000_or".tr,
                style: CustomTextStyles.bodyMediumPoppinsGray900,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          CustomTextFormField(
                controller: priceController,
                hintText: "lbl_pkr".tr,
                hintStyle: CustomTextStyles.titleMediumPoppinsBlack900,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 7.h,
                  vertical: 10.v,
                ),
              ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_place_bid".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles
                .gradientOnPrimaryContainerToPrimaryTL17Decoration,
            buttonTextStyle:
                CustomTextStyles.titleMediumPoppinsPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
