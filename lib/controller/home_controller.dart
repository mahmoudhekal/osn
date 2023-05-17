import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentNavIndex = 0.obs;
  RxInt number_products = 0.obs;
  void numberProduct() {
    number_products++;
  }
}