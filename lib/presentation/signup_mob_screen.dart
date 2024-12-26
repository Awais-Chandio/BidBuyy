import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/domain/facebookauth/facebook_auth_helper.dart';
import 'package:bidbuyweb/widgets/custom_checkbox_button.dart';
import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import 'package:bidbuyweb/widgets/custom_text_form_field.dart';
import '../widgets/app_bar/appbar_title_image.dart';
import 'package:flutter/material.dart';

class SignupMobScreen extends StatefulWidget {
  const SignupMobScreen({Key? key}) : super(key: key);

  @override
  SignupMobScreenState createState() => SignupMobScreenState();

}

// ignore_for_file: must_be_immutable
class SignupMobScreenState extends State<SignupMobScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();


  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  // _buildFrameOne(context),
                  SizedBox(height: 66.v),
                  SizedBox(
                      height: 1455.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        _buildFrameSeven(context),
                      
                        // _buildFrameSubscribe(context)
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
              child: CustomTextFormField(controller: emailController))
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
                        text: "lbl_password2".tr,
                        style: CustomTextStyles.bodyMediumPoppinsGray900),
                    TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles.bodyMediumPoppinsRed600)
                  ]),
                  textAlign: TextAlign.left)),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child:CustomTextFormField(
                        controller: passwordController, obscureText: true))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 30.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_login".tr, style: CustomTextStyles.headlineLargePrimary),
          SizedBox(height: 12.v),
          _buildFrameEmail(context),
          SizedBox(height: 9.v),
          _buildFramePassword(context),
          SizedBox(height: 8.v),
          Align(
              alignment: Alignment.centerLeft,
              child:CustomCheckboxButton(
                        alignment: Alignment.centerLeft,
                        text: "lbl_remember_me".tr,
                        value: rememberMe,
                        onChange: (value) {
                        })
                  ),
          SizedBox(height: 18.v),
          // CustomElevatedButton(
          //     height: 35.v,
          //     text: "lbl_register",
          //     margin: EdgeInsets.only(right: 9.h),
          //     buttonStyle: CustomButtonStyles.none,
          //     decoration: CustomButtonStyles
          //         .gradientOnPrimaryContainerToPrimaryTL17Decoration,
          //     buttonTextStyle: theme.textTheme.labelMedium!),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(right: 9.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                    child: SizedBox(
                        width: 115.h,
                        child: Divider(color: appTheme.gray20003))),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("lbl_or_sign_up_with".tr,
                        style: CustomTextStyles.bodySmallGray900)),
                Padding(
                    padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                    child: SizedBox(
                        width: 125.h,
                        child: Divider(color: appTheme.gray20003, indent: 8.h)))
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
                        imagePath: ImageConstant.imgSkillIconsInstagram)))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildFrameSeven(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
            decoration: AppDecoration.fillGray,
            child: _buildFrameFive(context)));
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
