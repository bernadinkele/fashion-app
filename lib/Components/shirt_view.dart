import 'package:fashion_shop/Components/components.dart';
import 'package:fashion_shop/Models/model.dart';
import 'package:fashion_shop/Utils/utils.dart';
import 'package:flutter/material.dart';

class ShirtView extends StatefulWidget {
  const ShirtView({super.key});

  @override
  State<ShirtView> createState() => _ShirtViewState();
}

class _ShirtViewState extends State<ShirtView> {
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
           Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.getProportionateScreenHeight(10)),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: productsModels.take(2).map((product){
                  return ProductItem(productModel: product);
              }).toList()
            ),
          )
        ],
      ),
    );
  }
}
