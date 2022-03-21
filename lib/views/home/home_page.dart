import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/text_poppins.dart';
import 'package:news_app/config/data.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {

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
                    text: "NewsApp",
                    color: Data.primary_color,
                    weight: FontWeight.w900,
                    size: 20
                  ),
                  Icon(
                    Icons.notifications,
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
                  categoryItem(width, "All News", 0),
                  categoryItem(width, "Business", 1),
                  categoryItem(width, "Politics", 2),
                  categoryItem(width, "Tech", 3),
                  categoryItem(width, "Healthy", 4),
                  categoryItem(width, "Science", 5),
                  categoryItem(width, "Education", 6),
                ],
              ),
            ),
            Container(
              width: width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Data.bottom_nav_color
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextPoppins(
                    text: "Making the Most of Outdoor Space for a Bountiful and Beautiful Vegetable Garden", 
                    color: Data.secondary_color, 
                    weight: FontWeight.w500, 
                    size: 16
                  ),
                  SizedBox(
                    height: 5,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: height / 3,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://picsum.photos/250?id=2"),
                              ),
                            ),
                          ),
                        ),
                        Container(width: 10, height: 10),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("https://picsum.photos/250?id=3"),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(width: 10, height: 10),
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("https://picsum.photos/250?id=4"),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Data.inactive_bottom_nav_color,
                              size: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextPoppins(
                              text: "800", 
                              color: Data.inactive_bottom_nav_color, 
                              weight: FontWeight.normal, 
                              size: 14
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.comment,
                              color: Data.inactive_bottom_nav_color,
                              size: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextPoppins(
                              text: "200", 
                              color: Data.inactive_bottom_nav_color, 
                              weight: FontWeight.normal, 
                              size: 14
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.reply_outlined,
                              color: Data.inactive_bottom_nav_color,
                              size: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextPoppins(
                              text: "100", 
                              color: Data.inactive_bottom_nav_color, 
                              weight: FontWeight.normal, 
                              size: 14
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_vert,
                              color: Data.inactive_bottom_nav_color,
                              size: 14
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextPoppins(
                    text: "View All", 
                    color: Data.inactive_color, 
                    weight: FontWeight.w600, 
                    size: 12
                  ),
                ],
              ),
            ),
            TextPoppins(
              text: "Popular Redactions", 
              color: Data.secondary_color, 
              weight: FontWeight.bold, 
              size: 16
            ),
            Container(
              width: width,
              height: 50,
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  redactionItem("https://img2.pngdownload.id/20190102/iez/kisspng-cnn-portable-network-graphics-logo-vector-graphics-lawsuit-claims-lsu-ignored-alleged-fraternity-hazi-5c2cc207ed1272.3128007415464371279711.jpg"),
                  redactionItem("https://e7.pngegg.com/pngimages/850/1001/png-clipart-computer-icons-logo-of-the-bbc-bbc-world-news-uc-browser-text-rectangle.png"),
                  redactionItem("https://e7.pngegg.com/pngimages/26/622/png-clipart-msn-logo-microsoft-outlook-com-design-text-logo.png"),
                  redactionItem("https://img2.pngdownload.id/20180603/zlo/kisspng-cnbc-tv18-cnbc-africa-television-streaming-media-5b1386859443f3.4724774315280062776073.jpg"),
                  redactionItem("https://e7.pngegg.com/pngimages/547/670/png-clipart-fox-logo-fox-logo-icons-logos-emojis-iconic-brands.png"),
                  redactionItem("https://e7.pngegg.com/pngimages/331/155/png-clipart-national-geographic-society-logo-geography-national-day-preference-miscellaneous-angle.png"),
                  redactionItem("https://w7.pngwing.com/pngs/470/246/png-transparent-new-york-city-the-new-york-times-company-news-the-new-york-times-international-edition-natural-gas-miscellaneous-text-trademark.png"),
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
                    text: "Browse By", 
                    color: Data.secondary_color, 
                    weight: FontWeight.bold, 
                    size: 16
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
                  browseItem(width, "Trending", 0),
                  browseItem(width, "Recommendation", 1),
                  browseItem(width, "Newest", 2),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                browseListItem(
                  height,
                  "2021's most brilliant horror movie",
                  "The new Candyman and how horror is reckoning with racism",
                  "John Doe",
                  "4h ago",
                  "https://picsum.photos/250?id=5"
                ),
                browseListItem(
                  height,
                  "US jobs growth disappoints as recovery falters",
                  "The new Candyman and how horror is reckoning with racism",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=6"
                ),
                browseListItem(
                  height,
                  "Food price rise fears amid staff",
                  "The new Candyman and how horror is reckoning with racism",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=7"
                ),
                browseListItem(
                  height,
                  "Climate change: Arctic warming linked to colder winters",
                  "The new Candyman and how horror is reckoning with racism",
                  "Jane Doe",
                  "5h ago",
                  "https://picsum.photos/250?id=8"
                ),
                GestureDetector(
                  child: Container(
                    width: width / 2,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Data.secondary_color,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: TextPoppins(
                        text: "See More",
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container browseListItem(double height, String title, String desc, String author, String time, String url) {
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
                  height: 5,
                ),
                TextPoppins(
                  text: desc, 
                  color: Data.secondary_color, 
                  weight: FontWeight.w300, 
                  size: 12
                ),
                SizedBox(
                  height: 10,
                ),
                TextPoppins(
                  text: author+"  |  "+time, 
                  color: Data.inactive_bottom_nav_color, 
                  weight: FontWeight.w300, 
                  size: 10
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

  Container redactionItem(String url) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Data.bottom_nav_color
      ),
      child: Center(
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: NetworkImage(url),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector categoryItem(double width, String category, int index) {
    return GestureDetector(
      onTap: () {
        controller.changeCategoryIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Obx(
              () => TextPoppins(
                text: category,
                color: controller.categoryIndex.value == index ? Data.secondary_color : Data.inactive_color,
                weight: FontWeight.bold,
                size: 12
              ),
            ),
            Obx(
              () => Container(
                margin: EdgeInsets.only(top: 5),
                width: width / 10,
                height: 2,
                color: controller.categoryIndex.value == index ? Data.primary_color : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector browseItem(double width, String browse, int index) {
    return GestureDetector(
      onTap: () {
        controller.changeBrowseIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 40),
        child: Column(
          children: [
            Obx(
              () => TextPoppins(
                text: browse,
                color: controller.browseIndex.value == index ? Data.secondary_color : Data.inactive_color,
                weight: FontWeight.bold,
                size: 12
              ),
            ),
            Obx(
              () => Container(
                margin: EdgeInsets.only(top: 5),
                width: width / 10,
                height: 2,
                color: controller.browseIndex.value == index ? Data.primary_color : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

