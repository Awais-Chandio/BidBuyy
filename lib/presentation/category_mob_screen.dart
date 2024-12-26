import 'package:bidbuyweb/widgets/custom_icon_button.dart';
import '../widgets/productcard2_item_widget.dart';
import '../domain/models/category_mob_model.dart';
import '../domain/models/productcard2_item_model.dart';
import 'package:flutter/material.dart';
class CategoryMobScreen extends StatefulWidget {
  const CategoryMobScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoryMobScreenState createState() => CategoryMobScreenState();
 
}

class CategoryMobScreenState extends State<CategoryMobScreen> {
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
        appBar:AppBarWidget(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 18.v),
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Divider(
                  indent: 16.h,
                  endIndent: 16.h,
                ),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_auction".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 1.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_category".tr,
                            style: CustomTextStyles.bodyMediumGray900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildCategoryText(context),
                SizedBox(height: 26.v),
                _buildProductCard(context),
                SizedBox(height: 19.v),
               Subscribe_Widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  /// Section Widget
  Widget _buildCategoryText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_category".tr,
              style: CustomTextStyles.headlineSmallRobotoPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 11.v,
              bottom: 3.v,
            ),
            child: Text(
              "msg_showing_1_10_of".tr,
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
          const Spacer(),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameGray90032x32,
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
              mainAxisExtent: 254.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              Productcard2ItemModel model =
                  Productcard2ItemModel();
              return Productcard2ItemWidget(
                model,
              );
            },
          ),
    );
  }
}


class numbers extends StatelessWidget {
  const numbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.adaptSize,
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Text(
        "lbl_1".tr,
        style: CustomTextStyles.labelLargePrimary_1,
      ),
    );
  }
}
