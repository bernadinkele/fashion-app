import 'package:fashion_shop/Views/view_export.dart';
import 'package:fashion_shop/Utils/utils.dart';
import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return Container(
      decoration: BoxDecoration(
          color: Pallete.blueColor,
          borderRadius: BorderRadius.circular(
              SizeConfig.getProportionateScreenHeight(16))),
      child: Padding(
        padding: EdgeInsets.symmetric(
                vertical: SizeConfig.getProportionateScreenWidth(20))
            .copyWith(left: SizeConfig.getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: SizeConfig.getProportionateScreenWidth(150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                    "Scale Up To 25 off",
                    style: TextStyle(
                        color: Pallete.whilteColor,
                        fontSize: SizeConfig.getFontSize(25),
                        fontWeight: FontWeight.w600),
                  ),
                   Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Further reductions",
                        style: TextStyle(
                            color: Pallete.whilteColor,
                            fontSize: SizeConfig.getFontSize(14),
                            fontWeight: FontWeight.w400),
                      )),
                  SizedBox(
                    height: SizeConfig.getProportionateScreenHeight(20),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: FilledButton(
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                                Pallete.whilteColor),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        SizeConfig.getProportionateScreenHeight(
                                            8))))),
                        onPressed: () =>
                            Navigator.push(context, PopularView.route()),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Pallete.blueColor,fontSize: SizeConfig.getFontSize(16)),
                        )),
                  )
                ],
              ), 
            ),
            Stack(
              children: [
                Transform.rotate(
                  angle: 30 * 3.1415926535 / 180,
                  child: Image.asset(
                    AssetsConstants.cap,
                    width: SizeConfig.getProportionateScreenWidth(160),
                  )),
                   Positioned(
                    bottom: 0,
                    child: Icon(Icons.star_rate, color: Pallete.whilteColor,size: SizeConfig.getFontSize(30),)),
                     Positioned(
                    top: 0,
                    child: Icon(Icons.star_rate, color: Pallete.whilteColor,size: SizeConfig.getFontSize(30))),
                    Positioned(
                    right: 10,
                   
                    child: Icon(Icons.star_rate, color: Pallete.whilteColor,size: SizeConfig.getFontSize(30))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
