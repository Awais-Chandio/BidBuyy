import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/domain/models/fortythree_item_model.dart';
import 'package:bidbuyweb/theme/theme_helper.dart';
import 'package:bidbuyweb/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FortythreeItemWidget extends StatelessWidget {
  FortythreeItemWidget(
    this.fortythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortythreeItemModel fortythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: fortythreeItemModelObj?.headPhones,
          height: 88.adaptSize,
          width: 88.adaptSize,
          radius: BorderRadius.circular(
            44.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          fortythreeItemModelObj.headPhones1!,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
