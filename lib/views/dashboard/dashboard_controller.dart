import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    print("ini value controller : "+tabIndex.value.toString());
  }
}
