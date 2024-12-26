
import 'package:bidbuyweb/core/app_export.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_leading_image.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_title_image.dart';
import 'package:bidbuyweb/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
 double? height;
 AppBarWidget({
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
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
          imagePath: ImageConstant.imgTextGray900,
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
            imagePath: ImageConstant.imgGravityUiHeart,
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
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size(
        SizeUtils.width,
        height ?? 33.v,
      );
}