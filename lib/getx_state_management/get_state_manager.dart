import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var isLoading = false.obs;

  void increment() {
    isLoading = true.obs;
    count++;
    isLoading = false.obs;
    update();
  }
}
