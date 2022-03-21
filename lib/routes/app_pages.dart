import 'package:get/get.dart';
import 'package:news_app/views/dashboard/dashboard_binding.dart';
import 'package:news_app/views/dashboard/dashboard_page.dart';
import 'package:news_app/views/interest/interest_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.interest, 
      page: () => InterestPage()
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
