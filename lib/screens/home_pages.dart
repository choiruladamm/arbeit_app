// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:arbeit_app/models/userModel.dart';
import 'package:arbeit_app/screens/applicants_pages.dart';
import 'package:arbeit_app/widgets/colors.dart';
import 'package:arbeit_app/widgets/data.dart';
import 'package:arbeit_app/screens/job_details_pages.dart';
import 'package:arbeit_app/screens/notifications_pages.dart';
import 'package:arbeit_app/screens/saved_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:unicons/unicons.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => HomePagesState();
}

class HomePagesState extends State<HomePages> {
  int current = 0;
  int savedIcons = 0;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    final words = nouns.take(50).toList();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // custom app bar
            Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Cole!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsPages()));
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: primaryColorsBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.notifications_active,
                            color: primaryColors,
                            size: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SavedPages()));
                          },
                          child: Icon(
                            UniconsLine.bookmark,
                            color: primaryColors,
                            size: 25.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: GestureDetector(
                          onTap: () async {
                            final users =
                                await Hive.openBox<UserModel>('users');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ApplicantsPages()));
                          },
                          child: Icon(
                            CupertinoIcons.bag,
                            color: primaryColors,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // search field
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 45,
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: thirdColors,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.only(top: 10),
                        hintText: 'Search jobs ...',
                        prefixIcon: Icon(
                          UniconsLine.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: primaryColorsBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.filter_list,
                          color: primaryColors,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Icon(
                          UniconsLine.ellipsis_v,
                          color: primaryColors,
                          size: 25.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // daily job tips text
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Daily Job Tips',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: primaryColors,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // daily job tips content
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CarouselSlider(
                items: sliderImgList
                    .map(
                      (item) => Container(
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(item),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 140,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 8),
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  viewportFraction: 0.6,
                ),
              ),
            ),

            // recommended text
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: primaryColors,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // recommended tabbar menu
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: recommendedItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(5),
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? primaryColors
                                  : Colors.white,
                              border:
                                  Border.all(width: 1, color: primaryColors),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                recommendedItems[index],
                                style: TextStyle(
                                  color: current == index
                                      ? Colors.white
                                      : primaryColors,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),

            // job content
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: contentRecommended.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobDetailsPages(
                                    jobDetail: contentRecommended[index])));
                      },
                      child: Container(
                        height: 135,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 2,
                              offset:
                                  Offset(1, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 18,
                            right: 18,
                            top: 20,
                            bottom: 20,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            '${contentRecommended.elementAt(index)['logos']}'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${contentRecommended.elementAt(index)['jobstitle']}',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 6),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${contentRecommended.elementAt(index)['salary']}',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: primaryColors),
                                              ),
                                              SizedBox(height: 6),
                                              Text(
                                                '${contentRecommended.elementAt(index)['location']}',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 15),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${contentRecommended.elementAt(index)['subjobs']}',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(height: 6),
                                              Text(
                                                '${contentRecommended.elementAt(index)['jobspost']}',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    savedIcons = index;
                                  });
                                },
                                child: Icon(
                                  UniconsLine.bookmark,
                                  size: 30,
                                  color: primaryColors,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
