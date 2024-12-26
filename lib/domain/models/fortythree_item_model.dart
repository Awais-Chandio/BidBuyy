import 'package:bidbuyweb/core/utils/image_constant.dart';
/// This class is used in the [fortythree_item_widget] screen.
class FortythreeItemModel {
  FortythreeItemModel({
    this.headPhones,
    this.headPhones1,
    this.id,
  }) {
    headPhones = headPhones ?? ImageConstant.imgCategoryHeadphone;
    headPhones1 = headPhones1 ?? "HeadPhones";
    id = id ?? "";
  }

  String? headPhones;

  String? headPhones1;

  String? id;
}
