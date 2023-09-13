 import 'package:fashion_shop/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSize buildCustomTabbar()
  {
    return  PreferredSize(
                preferredSize: Size(double.infinity, SizeConfig.getFontSize(70)),
                child: TabBar(
                  automaticIndicatorColorAdjustment: false,
                  labelColor: Pallete.blackColor,
                  labelStyle: TextStyle(fontSize:  SizeConfig.getFontSize(16), fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.only(right: SizeConfig.getFontSize(40), left: SizeConfig.getFontSize(12)),
                  isScrollable: true,
                  unselectedLabelColor: Pallete.grayColor,
                  unselectedLabelStyle:TextStyle(fontSize: SizeConfig.getFontSize(16), fontWeight: FontWeight.w500) ,
                  indicatorColor: Colors.red,
                  dividerColor: Pallete.grayColor,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(color: Pallete.blackColor, width: 2),
                  ),
                  tabs: const [
                    Tab(text: 'Shirt'),
                    Tab(text: 'Bags'),
                    Tab(text: 'Vest'),
                    Tab(text: 'Sneacker'),
                    Tab(text: 'Bags'),
                    Tab(text: 'Vest'),
                  ],
                ));
  }

PreferredSize buildAppbar()
{
  return PreferredSize(
            preferredSize: Size(
                double.infinity, SizeConfig.getProportionateScreenHeight(60)),
            child: Padding(
              padding:
                  EdgeInsets.all(SizeConfig.getProportionateScreenHeight(12))
                      .copyWith(
                          top: SizeConfig.getProportionateScreenHeight(12),
                          bottom: SizeConfig.getProportionateScreenHeight(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     Text(
                        "Collection",
                        style:
                            TextStyle(color: Pallete.blackColor, fontSize: SizeConfig.getFontSize(18)),
                      ),
                      SizedBox(
                        width: SizeConfig.getProportionateScreenWidth(30),
                      ),
                       Text(
                        "Featured",
                        style: TextStyle(
                            color: Pallete.blackColor,
                            fontSize: SizeConfig.getFontSize(18),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AssetsConstants.notification,
                    width: SizeConfig.getProportionateScreenWidth(50),
                  )
                ],
              ),
            ));
}