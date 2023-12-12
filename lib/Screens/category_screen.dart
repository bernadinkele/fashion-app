import 'package:fashion_shop/Components/category_tile.dart';
import 'package:fashion_shop/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';

class CategoriesScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const CategoriesScreen(),
      );
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Category",
            style: TextStyle(
                color: Pallete.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.getFontSize(20)),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                size: SizeConfig.getProportionateScreenHeight(20),
              ))),
      body: Padding(
          padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.getProportionateScreenWidth(12))
              .copyWith(top: SizeConfig.getProportionateScreenHeight(30)),
          child: SingleChildScrollView(
            child: Column(
              children: categoriesModels.map((category) {
                return CategoryCardTile(categoryModel: category);
              }).toList(),
            ),
          )),
    );
  }
}
