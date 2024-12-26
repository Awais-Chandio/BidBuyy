
  import 'package:bidbuyweb/core/utils/size_utils.dart';
import 'package:bidbuyweb/localization/app_localization.dart';
import 'package:bidbuyweb/theme/app_decoration.dart';
import 'package:bidbuyweb/theme/custom_text_style.dart';
import 'package:bidbuyweb/theme/theme_helper.dart';
import 'package:bidbuyweb/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OfferText extends StatelessWidget {
  const OfferText({super.key});

  @override
  Widget build(BuildContext context) {
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
}