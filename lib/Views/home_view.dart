import 'package:fashion_shop/Screens/category_item.dart';
import 'package:fashion_shop/Screens/product_item.dart';
import 'package:fashion_shop/Screens/sale_card.dart';
import 'package:fashion_shop/Models/category_model.dart';
import 'package:fashion_shop/Models/product_model.dart';
import 'package:fashion_shop/Views/view_export.dart';
import 'package:fashion_shop/common/common.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Scaffold(
        appBar:  buildAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.getProportionateScreenWidth(12)),
          child: Column(
            children: [
              const SaleCard(),
              SizedBox(
                height: SizeConfig.getProportionateScreenHeight(30),
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:categoriesModels.take(3).map((caterogie){
                  return CategoryItem(categoryModel: caterogie,);
                }).toList()
              ),
              SizedBox(
                height: SizeConfig.getProportionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "Popular ",
                    style: TextStyle(
                        color: Pallete.blackColor,
                        fontSize: SizeConfig.getFontSize(20),
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () =>
                          Navigator.push(context, CategoriesView.route()),
                      child: Text(
                        "See More",
                        style: TextStyle(
                            color: Pallete.grayColor,
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.getFontSize(16)),
                      )),
                ],
              ),
              SizedBox(
                height: SizeConfig.getProportionateScreenHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:productsModels.take(2).map((product){
                  return ProductItem(productModel: product);
              }).toList()
              )
            ],
          ),
        ),
      );
  }
}
