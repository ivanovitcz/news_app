import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  var isDarkMode = false.obs;

  void changeTheme() {
    if (Get.isDarkMode) {
      isDarkMode.value = false;
      Get.changeThemeMode(ThemeMode.light);
    } else {
      isDarkMode.value = true;
      Get.changeThemeMode(ThemeMode.dark);
    }
      
  }
}
