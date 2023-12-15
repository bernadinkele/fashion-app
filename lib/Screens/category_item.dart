
import 'package:fashion_shop/Models/model.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';
class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItem({
    super.key,
    
    required this.categoryModel
  });

  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Container(
      height: SizeConfig.getProportionateScreenHeight(130),
      width: SizeConfig.getProportionateScreenWidth(110),
      decoration: BoxDecoration(
          color: Pallete.whilteColor,
          border: Border.all(color: Pallete.secondGrayColor, width: 2),
          borderRadius:
              BorderRadius.circular(SizeConfig.getProportionateScreenWidth(8))),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenHeight(28),
            vertical: SizeConfig.getProportionateScreenHeight(8)),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Pallete.secondGrayColor, shape: BoxShape.circle),
              child: Padding(
                padding:
                    EdgeInsets.all(SizeConfig.getProportionateScreenHeight(12)),
                child: Image.asset(categoryModel.image,width: SizeConfig.getProportionateScreenHeight(50),),
              ),
            ),
            SizedBox(
              height: SizeConfig.getProportionateScreenHeight(8),
            ),
          Text(categoryModel.title,
                style:TextStyle(
                    color: Pallete.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.getFontSize(14)
                    ))
          ],
        ),
      ),
    );
  }
}
