import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:news_app/routes/app_pages.dart';
import 'package:news_app/routes/app_routes.dart';
import 'package:news_app/config/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.interest,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
