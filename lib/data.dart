// ignore_for_file: prefer_const_constructors


// data carousel slider image
import 'package:arbeit_app/widgets/alljobs.dart';
import 'package:arbeit_app/widgets/design.dart';
import 'package:flutter/material.dart';

final List<String> sliderImgList = [
  'https://user-images.githubusercontent.com/109071310/203557462-ada25670-4863-4346-b49a-f33ec59f705c.jpg',
  'https://user-images.githubusercontent.com/109071310/203557471-c6351484-3bf5-475a-b332-c2745a2885eb.jpg',
  'https://user-images.githubusercontent.com/109071310/203557473-3abc59be-06fe-45a6-aa85-1488a8b652e1.jpg'
];

// data tab bar builder
List<String> recommendedItems = [
    "All Jobs",
    "Design",
    "Strategy",
    "Programer",
    "Marketing",
  ];

final jobPages = [
  AllJobsTabBar(),
  DesignTabBar()
];


final List<Map<String, dynamic>> contentRecommended = [
  {
    "logos": "https://user-images.githubusercontent.com/109071310/203917997-3119e406-944f-441a-bac1-99f4ff064305.png",
    "jobstitle": "Senior Product Designer at\nTwitter",
    "salary": "\$3.000 - \$4.000 / Month",
    "subjobs": "Figma - XD - UI/UX",
    "location": "Tokyo - Full time",
    "jobspost": "Today",
  },
  {
    "logos": "https://user-images.githubusercontent.com/109071310/203921132-759a14ea-3c60-4171-b790-75de9e0525ea.png",
    "jobstitle": "Junior Graphic Designer at South\nDakota University",
    "salary": "\$2.500 - \$3.000 / Month",
    "subjobs": "Adobe - Ilustrator",
    "location": "South Dakota - Full time",
    "jobspost": "Today",
  },
  {
    "logos": "https://user-images.githubusercontent.com/109071310/203921769-1bb7f079-9fa1-4e00-b770-f2a0356cae10.png",
    "jobstitle": "Front End Developer at\nStarbucks",
    "salary": "\$3.500 - \$4.000 / Month",
    "subjobs": "Javascripts",
    "location": "Tokyo - Full time",
    "jobspost": "Today",
  },
];


