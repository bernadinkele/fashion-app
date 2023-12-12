import 'package:fashion_shop/Models/model.dart';
import 'package:flutter/material.dart';
import 'package:fashion_shop/Utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatefulWidget {
  final ProductModel productModel;
  const ProductItem({super.key, required this.productModel});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.getProportionateScreenHeight(180),
          width: SizeConfig.getProportionateScreenWidth(165),
          decoration: BoxDecoration(
              color: Pallete.grayColor,
              borderRadius: BorderRadius.circular(
                  SizeConfig.getProportionateScreenHeight(16))),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.productModel.image))),
            child: Padding(
              padding:
                  EdgeInsets.all(SizeConfig.getProportionateScreenHeight(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.getProportionateScreenHeight(8)),
                          color: Pallete.whilteColor),
                      child: Padding(
                          padding: EdgeInsets.all(
                              SizeConfig.getProportionateScreenHeight(4)),
                          child: InkWell(
                              onTap: () => setState(() {
                                    isLoved = !isLoved;
                                  }),
                              child: isLoved
                                  ? Icon(
                                      Icons.favorite_sharp,
                                      color: Colors.red,
                                      size: SizeConfig
                                          .getProportionateScreenHeight(20),
                                    )
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                      color: Pallete.blackColor,
                                      size: SizeConfig
                                          .getProportionateScreenHeight(20),
                                    )))),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.getProportionateScreenHeight(8)),
                        color: Pallete.whilteColor),
                    child: Padding(
                        padding: EdgeInsets.all(
                            SizeConfig.getProportionateScreenHeight(4)),
                        child: InkWell(
                            onTap: () => setState(() {
                                  isLoved = !isLoved;
                                }),
                            child: SvgPicture.asset(
                              AssetsConstants.shopBag,
                              width:
                                  SizeConfig.getProportionateScreenHeight(20),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.getProportionateScreenHeight(8),
        ),
        Text(widget.productModel.name,
            style: TextStyle(
                color: Pallete.blackColor,
                fontSize: SizeConfig.getFontSize(16),
                fontWeight: FontWeight.w400)),
        Text("\$${widget.productModel.price}",
            style: TextStyle(
                color: Pallete.blackColor,
                fontSize: SizeConfig.getFontSize(16),
                fontWeight: FontWeight.w900)),
      ],
    );
  }
}
