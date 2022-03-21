import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/views/interest/interest_controller.dart';

class InterestPage extends GetView<InterestController> {
  final interestController = Get.put(InterestController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextPoppins(
                  text: "Pick your interests", 
                  color: Data.secondary_color, 
                  weight: FontWeight.bold, 
                  size: 24
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextPoppins(
                    text: "We’ll use this info to personalize your feed to recommend things you’ll like.", 
                    color: Data.secondary_color, 
                    weight: FontWeight.normal, 
                    size: 14,
                    align: TextAlign.center,
                  ),
                ),
              ],
            ),
            Obx(
              () {
                if(interestController.isMax.value) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextPoppins(
                        text: "You can only choose 3", 
                        color: Colors.red, 
                        weight: FontWeight.normal, 
                        size: 14
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              }
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  width: width,
                  height: height / 6.25,
                  child: interestRow(
                    "https://picsum.photos/250?id=5",
                    "Politic",
                    1,
                    "https://picsum.photos/250?id=4",
                    "Business",
                    2
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: height / 6.25,
                  child: interestRow(
                    "https://picsum.photos/250?id=11",
                    "Culture",
                    3,
                    "https://picsum.photos/250?id=42",
                    "Healthy",
                    4
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: height / 6.25,
                  child: interestRow(
                    "https://picsum.photos/250?id=33",
                    "Nature",
                    5,
                    "https://picsum.photos/250?id=65",
                    "Education",
                    6
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: height / 6.25,
                  child: interestRow(
                    "https://picsum.photos/250?id=25",
                    "Sport",
                    7,
                    "https://picsum.photos/250?id=34",
                    "Technology",
                    8
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("/dashboard");
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 60),
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Data.secondary_color
                ),
                child: Center(
                  child: TextPoppins(
                    text: "Save",
                    color: Colors.white,
                    weight: FontWeight.bold,
                    size: 14,
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }

  Row interestRow(String url_1, String title_1, int index_1, String url_2, String title_2, int index_2) {
    return Row(
      children: [
        interestItem(
          url_1,
          title_1,
          index_1
        ),
        SizedBox(
          width: 10,
        ),
        interestItem(
          url_2,
          title_2,
          index_2
        ),
      ],
    );
  }

  Flexible interestItem(String url, String title, int index) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          interestController.updateInterest(index);
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextPoppins(
                      text: title, 
                      color: Colors.white, 
                      weight: FontWeight.bold, 
                      size: 16
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Obx(
                          () {
                            if(interestController.interest.contains(index)) {
                              return Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }
                        ),
                      ),
                    ),
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
