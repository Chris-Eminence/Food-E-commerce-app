import 'package:food_app/controllers/popular_product_controllers.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/api/api_client.dart';

Future<void> init() async {
  // api client dependency
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  // popular product repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // controllers
  Get.lazyPut(() => PopularProductsControllers(popularProductRepo: Get.find()));
}
