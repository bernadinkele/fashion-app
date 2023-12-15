import 'package:fashion_shop/Components/shirt_view.dart';
import 'package:fashion_shop/common/commons_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fashion_shop/Utils/utils.dart';
class PopularScreen extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const PopularScreen(),
      );
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
 
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
            bottom: buildCustomTabbar(), 
            actions: [
              SvgPicture.asset(
                AssetsConstants.filter,
                width: SizeConfig.getProportionateScreenHeight(20),
              ),
               SizedBox(
                width: SizeConfig.getProportionateScreenHeight(20),
              )
            ],
            title: Text(
              "Popular",
              style: TextStyle(
                  color: Pallete.blackColor, fontWeight: FontWeight.bold, fontSize: SizeConfig.getFontSize(20)),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon:  Icon(Icons.arrow_back_ios,size: SizeConfig.getProportionateScreenHeight(20),))),
        body: Padding(
            padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.getProportionateScreenWidth(12))
                .copyWith(top: SizeConfig.getProportionateScreenHeight(20)),
            child: const TabBarView(children: [
              ShirtView(),
              ShirtView(),
              ShirtView(),
              ShirtView(),
              ShirtView(),
              ShirtView()
            ])),
      ),
    );
  }
}