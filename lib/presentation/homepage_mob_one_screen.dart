import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/models/productcard1_item_model.dart';
import 'package:bidbuyweb/widgets/app_bar/appBar_widget.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_outlined_button.dart';
import 'package:bidbuyweb/widgets/offer_text.dart';
import 'package:bidbuyweb/widgets/subscribe_widget.dart';
import '../widgets/fortythree_item_widget.dart';
import '../widgets/productcard1_item_widget.dart';
import '../domain/models/fortythree_item_model.dart';
import 'package:flutter/material.dart';

class HomepageMobOneScreen extends StatefulWidget {
  const HomepageMobOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageMobOneScreenState createState() => HomepageMobOneScreenState();
  
}

class HomepageMobOneScreenState extends State<HomepageMobOneScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget(),
        // appBar: ,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const OfferText(),
                // const OfferTextHeader(),
                SizedBox(height: 66.v),
                _buildBidNowHeader(context),
                SizedBox(height: 27.v),
                _buildProductCard(context),
                SizedBox(height: 19.v),
                CustomOutlinedButton(
                  width: 141.h,
                  text: "lbl_view_all".tr,
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
                _buildBrowseByCategory(context),
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
  Widget _buildBidNowHeader(BuildContext context) {
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
                      "msg_your_gateway_to".tr,
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
                      "msg_discover_treasures".tr,
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
                    text: "lbl_bid_now".tr,
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
                            dynamicText1: "lbl_23".tr,
                            dynamicText2: "lbl_hours".tr,
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
                                  "lbl_05".tr,
                                  style: CustomTextStyles
                                      .titleMediumPoppinsPrimaryContainer,
                                ),
                                Text(
                                  "lbl_days".tr,
                                  style: CustomTextStyles
                                      .bodySmallPoppinsPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                          _buildFrame(
                            context,
                            dynamicText1: "lbl_59".tr,
                            dynamicText2: "lbl_minutes".tr,
                          ),
                          _buildFrame(
                            context,
                            dynamicText1: "lbl_35".tr,
                            dynamicText2: "lbl_seconds".tr,
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
                "msg_ongoing_auctions".tr.toUpperCase(),
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
              mainAxisExtent: 250.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount:6,
            itemBuilder: (context, index) {
              Productcard1ItemModel model =
                  Productcard1ItemModel();
              return Productcard1ItemWidget(
                model,
              );
            },
          )
    );
  }

  /// Section Widget
  Widget _buildBrowseByCategory(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        children: [
          Text(
            "msg_browse_by_categories".tr.toUpperCase(),
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
                  itemCount:6,
                  itemBuilder: (context, index) {
                    FortythreeItemModel model = FortythreeItemModel();
                    return FortythreeItemWidget(
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
    required String dynamicText1,
    required String dynamicText2,
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
                dynamicText1,
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
                  dynamicText2,
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
