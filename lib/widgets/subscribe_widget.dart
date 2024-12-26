
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/core/utils/validation_functions.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Subscribe_Widget extends StatelessWidget {
 final TextEditingController emailController = TextEditingController();
   Subscribe_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 981.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 120.v,
              ),
              decoration: AppDecoration.fillGray20001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 64.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 39.adaptSize,
                        width: 39.adaptSize,
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder19,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSubtract,
                          height: 39.adaptSize,
                          width: 39.adaptSize,
                          radius: BorderRadius.circular(
                            19.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          bottom: 9.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 22.v,
                              width: 76.h,
                            ),
                            Text(
                              "msg_the_wise_choice".tr.toUpperCase(),
                              style: CustomTextStyles.robotoGray900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 348.h,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      right: 10.h,
                    ),
                    child: Text(
                      "msg_join_online_auctions".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeRobotoPrimary.copyWith(
                        height: 1.38,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTrash,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgInfo,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: CustomIconButton(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 64.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 18.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_company".tr.toUpperCase(),
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 15.v),
                              SizedBox(
                                width: 54.h,
                                child: Text(
                                  "msg_about_features".tr,
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    height: 1.14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_help".tr.toUpperCase(),
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 15.v),
                            SizedBox(
                              width: 114.h,
                              child: Text(
                                "msg_customer_support_delivery".tr,
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 76.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_faq".tr.toUpperCase(),
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "lbl_resources".tr.toUpperCase(),
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 47.h,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 114.h,
                          child: Text(
                            "msg_account_manage".tr,
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.14,
                            ),
                          ),
                        ),
                        Container(
                          width: 131.h,
                          margin: EdgeInsets.only(left: 65.h),
                          child: Text(
                            "msg_free_ebook_development".tr,
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 36.v),
                  Divider(
                    indent: 1.h,
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_shop_co_2000_2023".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 28.v,
              ),
              decoration:
                  AppDecoration.gradientOnPrimaryContainerToPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 279.h,
                      margin: EdgeInsets.only(right: 31.h),
                      child: Text(
                        "msg_stay_upto_date_about".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineLarge!.copyWith(
                          height: 1.09,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  CustomTextFormField(
                        controller: emailController,
                        hintText: "msg_enter_your_email".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 11.v, 12.h, 11.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameBlack90020x20,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 42.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      ),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                    text: "msg_subscribe_to_newsletter".tr,
                    buttonTextStyle: CustomTextStyles.titleSmallGray900,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}