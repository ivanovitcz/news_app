import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';
import 'package:news_app/views/explore/explore_controller.dart';

class ExplorePage extends GetView<ExploreController> {

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
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Data.bottom_nav_color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Search", 
                    color: Data.inactive_bottom_nav_color, 
                    weight: FontWeight.normal, 
                    size: 14
                  ),
                  Icon(
                    Icons.search,
                    size: 18,
                    color: Data.inactive_bottom_nav_color,
                  )
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextPoppins(
                    text: "Popular Tags", 
                    color: Data.secondary_color, 
                    weight: FontWeight.bold, 
                    size: 16
                  ),
                ],
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                tagItem("#russia"),
                tagItem("#ukraina"),
                tagItem("#uefa"),
                tagItem("#mandalika"),
                tagItem("#cryptocurrency"),
                tagItem("#metaverse"),
                tagItem("#nft"),
              ],
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Latest News", 
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
            Container(
              width: width,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  latestItem(
                    width,
                    "https://picsum.photos/250?id=4",
                    "Climate change: Arctic warming linked to colder winters"
                  ),
                  latestItem(
                    width,
                    "https://picsum.photos/250?id=88",
                    "Tokyo Paralympics: Great Britain win three golds and pass 100-medal mark"
                  ),
                  latestItem(
                    width,
                    "https://picsum.photos/250?id=13",
                    "Food price rise fears amid staff shortages"
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPoppins(
                    text: "Recommendation Topic", 
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
                recommendationItem(
                  height,
                  "2021's most brilliant horror movie",
                  "John Doe",
                  "4h ago",
                  "https://picsum.photos/250?id=5"
                ),
                recommendationItem(
                  height,
                  "US jobs growth disappoints as recovery falters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=6"
                ),
                recommendationItem(
                  height,
                  "Food price rise fears amid staff",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=7"
                ),
                recommendationItem(
                  height,
                  "Climate change: Arctic warming linked to colder winters",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=8"
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  Container latestItem(double width, String url, String title) {
    return Container(
      width: width / 1.5,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width / 1.5,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
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
                text: "Nature Channel", 
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
                text: "36 min ago", 
                color: Data.inactive_color, 
                weight: FontWeight.normal, 
                size: 10
              ),
            ],
          ),
        ]
      ),
    );
  }

  Container tagItem(String tag) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Data.bottom_nav_color
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextPoppins(
            text: tag, 
            color: Data.inactive_bottom_nav_color, 
            weight: FontWeight.normal, 
            size: 14
          )
        ],
      ),
    );
  }

  Container recommendationItem(double height, String title, String author, String time, String url) {
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
