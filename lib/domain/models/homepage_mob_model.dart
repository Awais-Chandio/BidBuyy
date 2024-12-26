import 'package:bidbuyweb/core/utils/image_constant.dart';
import 'productcard_item_model.dart';
import 'fortytwo_item_model.dart';

class HomepageMobModel {
  List<ProductcardItemModel> productcardItemList = [
    ProductcardItemModel(
        timeLeft: ImageConstant.imgImage7,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    ProductcardItemModel(
        timeLeft: ImageConstant.imgImage8,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    ProductcardItemModel(
        timeLeft: ImageConstant.imgImage7,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    ProductcardItemModel(
        timeLeft: ImageConstant.imgImage8,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45")
  ];

  List<FortytwoItemModel> fortytwoItemList = [
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategoryHeadphone,
        headPhones1: "HeadPhones"),
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategoryGamepad, headPhones1: "Gaming"),
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategoryComputer,
        headPhones1: "Computers"),
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategoryCellphone, headPhones1: "Phones"),
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategoryCamera, headPhones1: "Camera"),
    FortytwoItemModel(
        headPhones: ImageConstant.imgCategorySmartwatch,
        headPhones1: "SmartWatch")
  ];
}
