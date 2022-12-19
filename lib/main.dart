import 'package:flutter/material.dart';
import 'package:food_app/pages/food/popular_food_details.dart';
import 'package:food_app/pages/food/recommended_food_details.dart';
import 'package:food_app/helpers/dependencies.dart' as dep;
import 'package:food_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetails(),
    );
  }
}
