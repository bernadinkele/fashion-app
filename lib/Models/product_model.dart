import 'package:fashion_shop/Utils/assets_constants.dart';

class ProductModel {
  final String image;
  final String name;
  final int price;

  ProductModel({required this.image, required this.name, required this.price});
}

List<ProductModel> productsModels=[
 ProductModel(image: AssetsConstants.exposure, name: "Vest coloré", price: 130),
 ProductModel(image: AssetsConstants.exposure1, name: "Vest noir", price: 130),
 ProductModel(image: AssetsConstants.exposure1, name: "Vest coloré", price: 130),
];