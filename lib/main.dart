import 'package:fashion_shop/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Views/home_view.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fashion Shop App ',
        theme: ThemeData(
          fontFamily: "DMSans",
          useMaterial3: true,
        ),
        home: const HomeView());
  }
}
