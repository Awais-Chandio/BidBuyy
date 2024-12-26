import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/app_bar/appBar_widget.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:bidbuyweb/widgets/custom_outlined_button.dart';
import 'package:bidbuyweb/widgets/subscribe_widget.dart';
import 'package:flutter/material.dart';

class ProductMobScreen extends StatefulWidget {
  const ProductMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductMobScreenState createState() => ProductMobScreenState();
}

class ProductMobScreenState extends State<ProductMobScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15.v),
                  Divider(
                    indent: 16.h,
                    endIndent: 16.h,
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "lbl_auction".tr,
                              style: CustomTextStyles.bodyMediumBlack900_1,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 1.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 1.v,
                            ),
                            child: Text(
                              "lbl_category".tr,
                              style: CustomTextStyles.bodyMediumGray900,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 1.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 1.v,
                            ),
                            child: Text(
                              "product name",
                              style: CustomTextStyles.bodyMediumGray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage8386x358,
                    height: 386.v,
                    width: 358.h,
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 74.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage8386x358,
                            height: 54.v,
                            width: 69.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_xyz_instrument".tr,
                        style:
                            CustomTextStyles.headlineSmallInterBlack900SemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_time_left_4d_20h2".tr,
                        style: CustomTextStyles.bodyLargePrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_rs_192_00".tr,
                            style: CustomTextStyles.headlineSmallInterBlack900,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              top: 3.v,
                              bottom: 5.v,
                            ),
                            child: Text(
                              "lbl_3_bids2".tr,
                              style:
                                  CustomTextStyles.bodyMediumPoppinsBlack900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 349.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 24.h,
                    ),
                    child: Text(
                      "msg_playstation_5_controller".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodyMediumPoppinsBlack900_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: appTheme.black900,
                    indent: 16.h,
                    endIndent: 16.h,
                  ),
                  SizedBox(height: 12.v),
                  _buildBidNow1(context),
                  SizedBox(height: 14.v),
                  _buildShippingWidget(context),
                  SizedBox(height: 16.v),
                  _buildItemSpecWidget(context),
                  SizedBox(height: 19.v),
                  _buildCustomerReview(context),
                  SizedBox(height: 25.v),
                  // _buildEmail1(context),
                  Subscribe_Widget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingWidgetOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 47.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_sign_up_and_get2".tr,
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                TextSpan(
                  text: "lbl_sign_up_now".tr,
                  style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBidNow(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
          height: 44.v,
          text: "lbl_bid_now".tr,
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles
              .gradientOnPrimaryContainerToPrimaryTL4Decoration,
          buttonTextStyle: CustomTextStyles.titleMediumPoppinsPrimaryContainer,
          onPressed: () =>
              // NavigatorService.pushNamed(AppRoutes.homepageMobScreen),
              Navigator.pushNamed(context, RoutesName.signUp)),
    );
  }

  /// Section Widget
  Widget _buildBidNow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBidNow(context),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgWishlist,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconDelivery,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 21.v,
              bottom: 21.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 11.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_shipping".tr,
                  style: CustomTextStyles.titleSmallPoppinsBlack900_1,
                ),
                Text(
                  "msg_rs_100_per_order".tr,
                  style: CustomTextStyles.bodySmallPoppinsBlack900,
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 66.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.gray700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconParkOutlineDelivery,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 7.h,
              top: 21.v,
              bottom: 21.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 9.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_delivery".tr,
                  style: CustomTextStyles.titleSmallPoppinsBlack900_1,
                ),
                SizedBox(
                  width: 119.h,
                  child: Text(
                    "msg_estimated_between".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallPoppinsBlack900.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemSpecWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "msg_item_specifications".tr,
              style: CustomTextStyles.titleLargeInterBlack900,
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            width: 307.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Text(
              "msg_lorem_ipsum_dolor".tr,
              maxLines: 9,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumInterBlack900.copyWith(
                height: 1.71,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOtherProducts(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 44.v,
        text: "lbl_other_products".tr,
        margin: EdgeInsets.only(right: 8.h),
        buttonStyle: CustomButtonStyles.none,
        decoration:
            CustomButtonStyles.gradientOnPrimaryContainerToPrimaryTL4Decoration,
        buttonTextStyle: CustomTextStyles.titleSmallPoppinsPrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildContact(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_contact".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.titleSmallPoppins,
      ),
    );
  }

  /// Section Widget
  Widget _buildCustomerReview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 12.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse30,
                    height: 65.adaptSize,
                    width: 65.adaptSize,
                    radius: BorderRadius.circular(
                      32.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "lbl_kaif_khawaja".tr,
                            style: CustomTextStyles.titleSmallPoppinsBlack900,
                          ),
                        ),
                        Row(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_4_1".tr,
                                style:
                                    CustomTextStyles.bodyLargePoppinsBlack900,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl_150_reviews".tr,
                                  style: CustomTextStyles
                                      .bodyMediumPoppinsBlack900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            width: 316.h,
            child: Text(
              "msg_playstation_5_controller".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumPoppinsBlack900_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildOtherProducts(context),
              _buildContact(context),
            ],
          ),
        ],
      ),
    );
  }
}
