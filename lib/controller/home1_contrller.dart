import 'package:get/get.dart';

class HomePage1Controller extends GetxController {
  Rx<int> counter = 0.obs;
  // Rx<String> name = ''.obs;
  void incrementCounter() {
    counter.value++;
  }
}
