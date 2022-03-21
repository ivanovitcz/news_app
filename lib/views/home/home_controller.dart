import 'package:get/get.dart';

class HomeController extends GetxController {
  var categoryIndex = 0.obs;

  void changeCategoryIndex(int index) {
    categoryIndex.value = index;
  }

  var browseIndex = 0.obs;

  void changeBrowseIndex(int index) {
    browseIndex.value = index;
  }
}
