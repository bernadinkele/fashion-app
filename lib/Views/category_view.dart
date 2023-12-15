import 'package:fashion_shop/Screens/category_tile.dart';
import 'package:fashion_shop/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';

class CategoriesView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const CategoriesView(),
      );
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
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
