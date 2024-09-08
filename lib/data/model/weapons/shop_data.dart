import 'package:valorant/data/model/weapons/grid_position.dart';

class ShopData {
  int? cost;
  String? category;
  int? shopOrderPriority;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;
  Null image;
  String? newImage;
  Null newImage2;
  String? assetPath;

  ShopData(
      {this.cost,
      this.category,
      this.shopOrderPriority,
      this.categoryText,
      this.gridPosition,
      this.canBeTrashed,
      this.image,
      this.newImage,
      this.newImage2,
      this.assetPath});

  ShopData.fromJson(Map<String, dynamic> json) {
    cost = json['cost'];
    category = json['category'];
    shopOrderPriority = json['shopOrderPriority'];
    categoryText = json['categoryText'];
    gridPosition = json['gridPosition'] != null
        ? GridPosition.fromJson(json['gridPosition'])
        : null;
    canBeTrashed = json['canBeTrashed'];
    image = json['image'];
    newImage = json['newImage'];
    newImage2 = json['newImage2'];
    assetPath = json['assetPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cost'] = cost;
    data['category'] = category;
    data['shopOrderPriority'] = shopOrderPriority;
    data['categoryText'] = categoryText;
    if (gridPosition != null) {
      data['gridPosition'] = gridPosition!.toJson();
    }
    data['canBeTrashed'] = canBeTrashed;
    data['image'] = image;
    data['newImage'] = newImage;
    data['newImage2'] = newImage2;
    data['assetPath'] = assetPath;
    return data;
  }
}
