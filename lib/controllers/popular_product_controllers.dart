import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductsControllers extends GetxController {
  final PopularProductRepo popularProductRepo;

  List<dynamic> get popularProductList => _popularProductList;

  PopularProductsControllers({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {}
  }
}
