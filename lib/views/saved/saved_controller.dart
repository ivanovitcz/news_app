import 'package:get/get.dart';

class SavedController extends GetxController {
  var categoryIndex = 0.obs;

  void changeCategoryIndex(int index) {
    categoryIndex.value = index;
  }

}
