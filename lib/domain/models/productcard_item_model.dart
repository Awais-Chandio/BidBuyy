import 'package:bidbuyweb/core/utils/image_constant.dart';

import '../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.timeLeft,
    this.timeLeft1,
    this.productName,
    this.price,
    this.bidCount,
    this.sellerName,
    this.sellerRating,
    this.id,
  }) {
    timeLeft = timeLeft ?? ImageConstant.imgImage7;
    timeLeft1 = timeLeft1 ?? "Time left 4d 20h";
    productName = productName ?? "Product name";
    price = price ?? "Rs.120";
    bidCount = bidCount ?? "3 bids";
    sellerName = sellerName ?? "(Seller name)";
    sellerRating = sellerRating ?? "45";
    id = id ?? "";
  }

  String? timeLeft;

  String? timeLeft1;

  String? productName;

  String? price;

  String? bidCount;

  String? sellerName;

  String? sellerRating;

  String? id;
}
