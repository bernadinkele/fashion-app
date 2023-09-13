
import 'package:fashion_shop/Utils/assets_constants.dart';

class CategoryModel{
  final String image;
  final String title;
  final int productsCount;
  CategoryModel({
    required this.image, 
    required this.title, 
    required this.productsCount
  });

  
}

List<CategoryModel> categoriesModels=[
  CategoryModel(image: AssetsConstants.shirt, title: "Shirt", productsCount: 150),
  CategoryModel(image: AssetsConstants.bag, title: "Bag", productsCount: 200),
    CategoryModel(image: AssetsConstants.vest, title: "Vest",  productsCount: 40),
  CategoryModel(image: AssetsConstants.capArticle, title: "Cap",  productsCount: 40),
   CategoryModel(image: AssetsConstants.sandal, title: "Sandal", productsCount: 150),
  CategoryModel(image: AssetsConstants.trousers, title: "Trousers", productsCount: 200),
  CategoryModel(image: AssetsConstants.sneacker, title: "Sneackers",  productsCount: 40),
  
 

];
