import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/views/saved/saved_controller.dart';

class SavedPage extends GetView<SavedController> {
  final savedController = Get.find<SavedController>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Saved News",
                    color: Data.secondary_color,
                    weight: FontWeight.bold,
                    size: 20
                  ),
                  Icon(
                    Icons.settings,
                    color: Data.primary_color,
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryItem(width, "All Saved", 0),
                  categoryItem(width, "Business", 1),
                  categoryItem(width, "Politics", 2),
                  categoryItem(width, "Tech", 3),
                  categoryItem(width, "Healthy", 4),
                  categoryItem(width, "Science", 5),
                  categoryItem(width, "Education", 6),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                savedItem(
                  height,
                  "2021's most brilliant horror movie",
                  "John Doe",
                  "4h ago",
                  "https://picsum.photos/250?id=5",
                  "1h ago"
                ),
                savedItem(
                  height,
                  "US jobs growth disappoints as recovery falters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=6",
                  "2h ago"
                ),
                savedItem(
                  height,
                  "Food price rise fears amid staff",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=7",
                  "3h ago"
                ),
                savedItem(
                  height,
                  "Climate change: Arctic warming linked to colder winters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=8",
                  "5h ago"
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector categoryItem(double width, String category, int index) {
    return GestureDetector(
      onTap: () {
        savedController.changeCategoryIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Obx(
              () => TextPoppins(
                text: category,
                color: savedController.categoryIndex.value == index ? Data.secondary_color : Data.inactive_color,
                weight: FontWeight.bold,
                size: 12
              ),
            ),
            Obx(
              () => Container(
                margin: EdgeInsets.only(top: 5),
                width: width / 10,
                height: 2,
                color: savedController.categoryIndex.value == index ? Data.primary_color : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container savedItem(double height, String title, String author, String time, String url, String savedDate) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPoppins(
                  text: title, 
                  color: Data.secondary_color, 
                  weight: FontWeight.w500, 
                  size: 14
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextPoppins(
                      text: author, 
                      color: Data.primary_color, 
                      weight: FontWeight.normal, 
                      size: 10
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Data.inactive_color,
                      ),
                    ),
                    TextPoppins(
                      text: time, 
                      color: Data.inactive_color, 
                      weight: FontWeight.normal, 
                      size: 10
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Data.primary_color
                  ),
                  child: TextPoppins(
                    text: "Saved Date "+savedDate, 
                    color: Colors.white, 
                    weight: FontWeight.normal, 
                    size: 10
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: height / 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
