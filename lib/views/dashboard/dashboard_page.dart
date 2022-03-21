import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/controllers/theme_controller.dart';
import 'package:news_app/views/explore/explore_page.dart';
import 'package:news_app/views/foryou/foryou_page.dart';
import 'package:news_app/views/home/home_page.dart';
import 'package:news_app/views/profile/profile_page.dart';
import 'package:news_app/views/saved/saved_page.dart';

import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  final dashboardController = Get.find<DashboardController>();
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Obx(() {
      print("ini value hasil : "+dashboardController.tabIndex.value.toString());
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: dashboardController.tabIndex.value,
            children: [
              HomePage(),
              ExplorePage(),
              ForYouPage(),
              SavedPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => Container(
            height: height / 10,
            color: themeController.isDarkMode.value ? Data.dark_bottom_nav_color : Data.bottom_nav_color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bottomNavItem(
                  width, 
                  Icons.home, 
                  Icons.home_outlined, 
                  "Home", 
                  0
                ),
                bottomNavItem(
                  width, 
                  Icons.search, 
                  Icons.search_outlined,
                  "Explore", 
                  1
                ),
                bottomNavItem(
                  width, 
                  Icons.play_arrow_rounded, 
                  Icons.play_arrow_outlined, 
                  "For You", 
                  2
                ),
                bottomNavItem(
                  width, 
                  Icons.bookmark, 
                  Icons.bookmark_outline_outlined, 
                  "Saved", 
                  3
                ),
                bottomNavItem(
                  width, 
                  Icons.account_circle,
                  Icons.account_circle_outlined, 
                  "Profile", 
                  4
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  GestureDetector bottomNavItem(double width, IconData icon, IconData inActiveIcon, String label, int index) {
    return GestureDetector(
      onTap: () {
        dashboardController.changeTabIndex(index);
      },
      child: Container(
        width: width / 10,
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Stack(
          children: [
            Container(
              width: width / 10,
              height: 2,
              color: dashboardController.tabIndex.value == index ? Data.primary_color : (themeController.isDarkMode.value ? Data.dark_bottom_nav_color : Data.bottom_nav_color),
            ),
            
            
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    dashboardController.tabIndex.value == index ? icon : inActiveIcon,
                    color: dashboardController.tabIndex.value == index ? Data.primary_color : Data.inactive_bottom_nav_color,
                    size: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextPoppins(
                      text: label,
                      color: dashboardController.tabIndex.value == index ? Data.primary_color : Data.inactive_bottom_nav_color,
                      weight: FontWeight.normal,
                      size: 10
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
