import 'package:bidbuyweb/core/utils/image_constant.dart';
import 'package:bidbuyweb/domain/models/fortythree_item_model.dart';
import 'package:bidbuyweb/domain/models/productcard1_item_model.dart';

class HomepageMobOneModel {
  List<Productcard1ItemModel> productcard1ItemList = [
    Productcard1ItemModel(
        timeLeft: ImageConstant.imgImage7,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    Productcard1ItemModel(
        timeLeft: ImageConstant.imgImage8,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    Productcard1ItemModel(
        timeLeft: ImageConstant.imgImage7,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45"),
    Productcard1ItemModel(
        timeLeft: ImageConstant.imgImage8,
        timeLeft1: "Time left 4d 20h",
        productName: "Product name",
        price: "Rs.120",
        bidCount: "3 bids",
        sellerName: "(Seller name)",
        sellerRating: "45")
  ];

  List<FortythreeItemModel> fortythreeItemList = [
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategoryHeadphone,
        headPhones1: "HeadPhones"),
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategoryGamepad, headPhones1: "Gaming"),
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategoryComputer,
        headPhones1: "Computers"),
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategoryCellphone, headPhones1: "Phones"),
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategoryCamera, headPhones1: "Camera"),
    FortythreeItemModel(
        headPhones: ImageConstant.imgCategorySmartwatch,
        headPhones1: "SmartWatch")
  ];
}
