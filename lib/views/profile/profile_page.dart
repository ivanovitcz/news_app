import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/controllers/theme_controller.dart';
import 'package:news_app/views/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            Container(
              height: (height / 5) + 50,
              child: Stack(
                children: [
                  Container(
                    height: height / 5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://picsum.photos/250?id=2"),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(
                        () => Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: themeController.isDarkMode.value ? Colors.black : Colors.white
                          ),
                          child: Center(
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://picsum.photos/250?id=22"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Obx(
                              () => Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: themeController.isDarkMode.value ? Data.dark_bottom_nav_color : Data.bottom_nav_color
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: Data.inactive_bottom_nav_color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Obx(
                        () => TextPoppins(
                          text: "John Doe", 
                          color: themeController.isDarkMode.value ? Colors.white : Data.secondary_color, 
                          weight: FontWeight.bold, 
                          size: 24
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.verified_rounded,
                        color: Data.primary_color,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextPoppins(
                        text: "@johndoe", 
                        color: Data.inactive_color, 
                        weight: FontWeight.normal, 
                        size: 14
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_pin,
                        size: 16,
                        color: Data.inactive_color,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextPoppins(
                        text: "Imaginer City", 
                        color: Data.inactive_color, 
                        weight: FontWeight.normal, 
                        size: 14
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: Data.inactive_color,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextPoppins(
                        text: "Joined Jan 2022", 
                        color: Data.inactive_color, 
                        weight: FontWeight.normal, 
                        size: 14
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                themeController.changeTheme();
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => TextPoppins(
                        text: "Change Theme", 
                        color: themeController.isDarkMode.value ? Colors.white : Data.secondary_color, 
                        weight: FontWeight.bold, 
                        size: 16
                      ),
                    ),
                    Obx(() {
                      return TextPoppins(
                        text: themeController.isDarkMode.value ? "Dark Mode" : "Light Mode", 
                        color: Data.inactive_bottom_nav_color, 
                        weight: FontWeight.normal, 
                        size: 14
                      );
                    })
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}
