import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/app_color.dart';
import 'package:food_app/utils/screen_dimensions.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';

import '../../widgets/big_text_widgets.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text_widget.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: ScreenDimension.popularFoodImageSize,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/first_food.png',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: ScreenDimension.width20,
              right: ScreenDimension.width20,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios),
                    AppIcon(icon: Icons.shopping_cart_checkout_outlined),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: ScreenDimension.popularFoodImageSize - 30,
              child: Container(
                  padding: EdgeInsets.only(
                    left: ScreenDimension.width20,
                    right: ScreenDimension.width20,
                    top: ScreenDimension.height20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(ScreenDimension.radius20),
                      topLeft: Radius.circular(ScreenDimension.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: const AppColumn(
                    text: 'Nigerian Fries',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
