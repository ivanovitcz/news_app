import 'package:get/get.dart';

class ProfileController extends GetxController {
  var profileTab = 0.obs;

  void changeProfileTab(int index) {
    profileTab.value = index;
  }
}
