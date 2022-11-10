import 'package:add_cart_using_getx/model/product.dart';
import 'package:get/get.dart';

class Purchase extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(1, "Demo Product", "https://picsum.photos/seed/picsum/200/300",
          "this is a product we are going to show by getX", 220.0),
      Product(1, "Demo Product", "https://picsum.photos/id/237/200/300",
          "this is a product we are going to show by getX", 300.0),
    ];
    products.value = serverResponse;
  }
}
