
import 'package:fashion_shop/Models/model.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';
class CategoryCardTile extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCardTile({
    super.key,
    required this.categoryModel
  });

  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Padding(
      padding:
          EdgeInsets.only(bottom: SizeConfig.getProportionateScreenHeight(12)),
      child: Container(
        height: SizeConfig.getProportionateScreenHeight(100),
        decoration: BoxDecoration(
            color: Pallete.secondGrayColor,
            borderRadius: BorderRadius.circular(
                SizeConfig.getProportionateScreenHeight(12))),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.getProportionateScreenHeight(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Align(
                      alignment: Alignment.topLeft,
                      child: Text(categoryModel.title,
                          style:TextStyle(
                              color: Pallete.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.getFontSize(20)))),
                  SizedBox(
                    height: SizeConfig.getProportionateScreenHeight(4),
                  ),
                   Text(
                    "${categoryModel.productsCount} Products",
                    style:  TextStyle(
                        color: Pallete.grayColor,
                        fontSize: SizeConfig.getFontSize(16),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Image.asset(categoryModel.image,width: SizeConfig.getProportionateScreenHeight(100),)
            ],
          ),
        ),
      ),
    );
  }
}
