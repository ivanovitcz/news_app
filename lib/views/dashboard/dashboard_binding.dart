import 'package:get/get.dart';
import 'package:news_app/controllers/theme_controller.dart';
import 'package:news_app/views/foryou/foryou_controller.dart';
import 'package:news_app/views/home/home_controller.dart';
import 'package:news_app/views/explore/explore_controller.dart';
import 'package:news_app/views/profile/profile_controller.dart';
import 'package:news_app/views/saved/saved_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ExploreController>(() => ExploreController());
    Get.lazyPut<ForYouController>(() => ForYouController());
    Get.lazyPut<SavedController>(() => SavedController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
