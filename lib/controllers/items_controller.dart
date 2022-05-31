import 'package:get/get.dart';

class CartController extends GetxController {
  var cofeCount = 0.obs;
  var croissantCount = 0.obs;
  var waterCount = 0.obs;
  var juiceCount = 0.obs;

  int total() {
    return cofeCount.value +
        croissantCount.value +
        waterCount.value +
        juiceCount.value;
  }

  void reset() {
    cofeCount = 0.obs;
    croissantCount = 0.obs;
    waterCount = 0.obs;
    juiceCount = 0.obs;
  }
}
