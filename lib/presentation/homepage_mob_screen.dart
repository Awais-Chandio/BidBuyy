import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_title_image.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_outlined_button.dart';
import '../widgets/fortytwo_item_widget.dart';
import '../widgets/productcard_item_widget.dart';
import '../domain/models/fortytwo_item_model.dart';
import '../domain/models/productcard_item_model.dart';
import 'package:flutter/material.dart';

class HomepageMobScreen extends StatefulWidget {
  const HomepageMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageMobScreenState createState() => HomepageMobScreenState();
}

class HomepageMobScreenState extends State<HomepageMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                offerMsg(context),
                SizedBox(height: 66.v),
                _homePageTextHeader(context),
                SizedBox(height: 27.v),
                _buildProductCard(context),
                SizedBox(height: 19.v),
                CustomOutlinedButton(
                  width: 141.h,
                  text: "lbl_view_all",
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles
                      .gradientOnPrimaryContainerToPrimaryTL22Decoration,
                ),
                SizedBox(height: 20.v),
                Divider(
                  indent: 16.h,
                  endIndent: 16.h,
                ),
                SizedBox(height: 18.v),
                _browseByCategoryWidget(context),
                SizedBox(height: 27.v),
                Subscribe_Widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.v,
          bottom: 2.v,
        ),
      ),
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgText,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameBlack900,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 7.v,
            right: 2.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameBlack900,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 7.v,
            right: 2.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame24x24,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 7.v,
            right: 18.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget offerMsg(BuildContext context) {
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
                  style: theme.textTheme.labelLarge!.copyWith(
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
  Widget _homePageTextHeader(BuildContext context) {
    return SizedBox(
      height: 721.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              decoration: AppDecoration.fillGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.v),
                  Container(
                    width: 268.h,
                    margin: EdgeInsets.only(right: 89.h),
                    child: Text(
                      "msg_your_gateway_to",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 323.h,
                    margin: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "msg_discover_treasures",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeRobotoPrimary.copyWith(
                        height: 1.38,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 52.v,
                    text: "lbl_bid_now",
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientOnPrimaryContainerToPrimaryDecoration,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_23",
                            dynamicTextProp2: "lbl_hours",
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillGray900.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder31,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_05",
                                  style: CustomTextStyles
                                      .titleMediumPoppinsPrimaryContainer,
                                ),
                                Text(
                                  "lbl_days",
                                  style: CustomTextStyles
                                      .bodySmallPoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_59",
                            dynamicTextProp2: "lbl_minutes",
                          ),
                          _buildFrame(
                            context,
                            dynamicTextProp1: "lbl_35",
                            dynamicTextProp2: "lbl_seconds",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 27.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPs5SlimGoedko,
                    height: 279.adaptSize,
                    width: 279.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 66.h,
                vertical: 19.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryContainerToPrimary,
              child: Text(
                "msg_ongoing_auctions".toUpperCase(),
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 246.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          ProductcardItemModel model = ProductcardItemModel();
          return ProductcardItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _browseByCategoryWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        children: [
          Text(
            "msg_browse_by_categories".toUpperCase(),
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 124.v,
                crossAxisCount: 3,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                FortytwoItemModel model = FortytwoItemModel();
                return FortytwoItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String dynamicTextProp1,
    required String dynamicTextProp2,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      color: appTheme.gray900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder31,
      ),
      child: Container(
        height: 62.adaptSize,
        width: 62.adaptSize,
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillGray900.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder31,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                dynamicTextProp1,
                style: CustomTextStyles.titleMediumPoppinsPrimaryContainer
                    .copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Text(
                  dynamicTextProp2,
                  style: CustomTextStyles.bodySmallPoppinsPrimaryContainer
                      .copyWith(
                    color: theme.colorScheme.primaryContainer,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
