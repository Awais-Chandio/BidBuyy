import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleImage extends StatelessWidget {
  AppbarTitleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomImageView(
        imagePath: imagePath,
        height: 86.adaptSize,
        width: 86.adaptSize,
        fit: BoxFit.contain,
      ),
    );
  }
}
