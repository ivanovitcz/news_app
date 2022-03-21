import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/views/foryou/foryou_controller.dart';

class ForYouPage extends GetView<ForYouController> {


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
              width: width,
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Politic", 
                    color: Data.secondary_color, 
                    weight: FontWeight.bold, 
                    size: 16
                  ),
                  TextPoppins(
                    text: "View All", 
                    color: Data.primary_color, 
                    weight: FontWeight.bold, 
                    size: 12
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                forYouItem(
                  height,
                  "2021's most brilliant horror movie",
                  "John Doe",
                  "4h ago",
                  "https://picsum.photos/250?id=5"
                ),
                forYouItem(
                  height,
                  "US jobs growth disappoints as recovery falters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=6"
                ),
                forYouItem(
                  height,
                  "Food price rise fears amid staff",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=7"
                ),
                forYouItem(
                  height,
                  "Climate change: Arctic warming linked to colder winters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=8"
                ),
              ],
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(bottom: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Science", 
                    color: Data.secondary_color, 
                    weight: FontWeight.bold, 
                    size: 16
                  ),
                  TextPoppins(
                    text: "View All", 
                    color: Data.primary_color, 
                    weight: FontWeight.bold, 
                    size: 12
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                forYouItem(
                  height,
                  "2021's most brilliant horror movie",
                  "John Doe",
                  "4h ago",
                  "https://picsum.photos/250?id=5"
                ),
                forYouItem(
                  height,
                  "US jobs growth disappoints as recovery falters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=6"
                ),
                forYouItem(
                  height,
                  "Food price rise fears amid staff",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=7"
                ),
                forYouItem(
                  height,
                  "Climate change: Arctic warming linked to colder winters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=8"
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container forYouItem(double height, String title, String author, String time, String url) {
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
