import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/facebookauth/facebook_auth_helper.dart';

import 'package:bidbuyweb/widgets/custom_checkbox_button.dart';
import 'package:bidbuyweb/widgets/custom_elevated_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupMobileScreen extends StatefulWidget {
  const SignupMobileScreen({Key? key}) : super(key: key);

  @override
  SignupMobileScreenState createState() => SignupMobileScreenState();
}

// ignore_for_file: must_be_immutable
class SignupMobileScreenState extends State<SignupMobileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBarWidget(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 66.v),
                  SizedBox(
                      height: 1530.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        _createAccountWidget(context),
                        Subscribe_Widget(),
                      ]))
                ])))));
  }


  /// Section Widget
  Widget _buildFrameEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_email2".tr,
                        style: CustomTextStyles.bodyMediumPoppinsGray900),
                    TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles.bodyMediumPoppinsRed600)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(),
          )
        ]));
  }

  /// Section Widget
  Widget _buildFramePassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: enUs["lbl_password2"],
                        style: CustomTextStyles.bodyMediumPoppinsGray900),
                    TextSpan(
                        text: enUs["lbl"],
                        style: CustomTextStyles.bodyMediumPoppinsRed600)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(obscureText: true),
          )
        ]));
  }

  /// Section Widget
  Widget _buildFrameConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: enUs["msg_confirm_password2"],
                        style: CustomTextStyles.bodyMediumPoppinsGray900),
                    TextSpan(
                        text: enUs["lbl"],
                        style: CustomTextStyles.bodyMediumPoppinsRed600)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
                // controller: confirmpasswordController,
                obscureText: true),
          )
        ]));
  }

  /// Section Widget
  Widget _createAccountWidget(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.fillGray,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 29.v),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Create Account",
                      style: CustomTextStyles.headlineLargePrimary),
                  SizedBox(height: 15.v),
                  _buildFrameEmail(context),
                  SizedBox(height: 9.v),
                  _buildFramePassword(context),
                  SizedBox(height: 9.v),
                  _buildFrameConfirmPassword(context),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 91.h),
                        child: CustomCheckboxButton(
                            alignment: Alignment.centerLeft,
                            text: "msg_i_accept_terms_and".tr,
                            value: false,
                            onChange: (value) {}),
                      )),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                      height: 35.v,
                      width: 320.v,
                      text: "lbl_register".tr,
                      margin: EdgeInsets.only(right: 9.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientOnPrimaryContainerToPrimaryTL17Decoration,
                      buttonTextStyle: theme.textTheme.labelMedium!),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                                child: SizedBox(
                                    width: 110.h,
                                    child: Divider(color: appTheme.gray20003))),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("Or Sign Up With",
                                    style: CustomTextStyles.bodySmallGray900)),
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                                child: SizedBox(
                                    width: 125.h,
                                    child: Divider(
                                        color: appTheme.gray20003,
                                        indent: 8.h)))
                          ])),
                  SizedBox(height: 12.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomIconButton(
                        height: 41.adaptSize,
                        width: 41.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFlatColorIconsGoogle)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: CustomIconButton(
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.outlineGray,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgLogosFacebook))),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: CustomIconButton(
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgSkillIconsInstagram)))
                  ]),
                  SizedBox(height: 6.v)
                ]))));
  }

  onTapBtnFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
