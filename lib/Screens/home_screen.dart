import 'package:fashion_shop/Components/category_item.dart';
import 'package:fashion_shop/Components/product_item.dart';
import 'package:fashion_shop/Components/sale_card.dart';
import 'package:fashion_shop/Models/category_model.dart';
import 'package:fashion_shop/Models/product_model.dart';
import 'package:fashion_shop/Screens/category_screen.dart';
import 'package:fashion_shop/common/common.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          Navigator.push(context, CategoriesScreen.route()),
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
      ),
    );
  }
}
