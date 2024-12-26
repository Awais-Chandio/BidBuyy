import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/theme/theme_helper.dart';
import 'package:bidbuyweb/widgets/custom_image_view.dart';

import '../domain/models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: fortytwoItemModelObj?.headPhones,
          height: 88.adaptSize,
          width: 88.adaptSize,
          radius: BorderRadius.circular(
            44.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          fortytwoItemModelObj.headPhones1!,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
