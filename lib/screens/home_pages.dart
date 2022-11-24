// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/colors.dart';
import 'package:arbeit_app/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => HomePagesState();
}

class HomePagesState extends State<HomePages> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: Column(
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
                    Container(
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
                    SizedBox(width: 5),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(
                        UniconsLine.align_right,
                        color: primaryColors,
                        size: 25.0,
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
                        UniconsLine.align_center,
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

          // recommended tabbar
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
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
                          margin: EdgeInsets.all(5),
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color:
                                current == index ? primaryColors : Colors.white,
                            border: Border.all(width: 1, color: primaryColors),
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
          
          Container(
            margin: EdgeInsets.only(top: 80),
            width: double.infinity,
            height: 200,
            // decoration: BoxDecoration(color: primaryColors),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[current],
                  size: 50,
                  color: Colors.indigo,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
