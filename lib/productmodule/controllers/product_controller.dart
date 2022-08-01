import 'package:get/get.dart';
import 'package:getx_fetch/apimodule/api_service.dart';
import 'package:getx_fetch/productmodule/models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = RxList(<WelCome>[]);

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var product = await ApiService.fetchProducts();
      if (product.isNotEmpty) {
        productList.assignAll(product);
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
