// ignore_for_file: prefer_const_constructors
// ignore_for_file: unused_field, iterable_contains_unrelated_type, unused_local_variable


// data carousel slider image
import 'package:flutter/material.dart';

final List<String> sliderImgList = [
  'https://user-images.githubusercontent.com/109071310/203557462-ada25670-4863-4346-b49a-f33ec59f705c.jpg',
  'https://user-images.githubusercontent.com/109071310/203557471-c6351484-3bf5-475a-b332-c2745a2885eb.jpg',
  'https://user-images.githubusercontent.com/109071310/203557473-3abc59be-06fe-45a6-aa85-1488a8b652e1.jpg',
  'https://user-images.githubusercontent.com/109071310/204094245-1bff6736-efd2-4287-82f8-163f05cfca1a.jpg',
  'https://user-images.githubusercontent.com/109071310/204094441-ad8657d9-6e6d-4c1a-ac94-c16777c4b530.jpg',
  'https://user-images.githubusercontent.com/109071310/204094522-c10273f0-3276-4860-ba0b-6bdd20775854.jpg'
];

// data tab bar builder
List<String> recommendedItems = [
  "All Jobs",
  "Design",
  "Strategy",
  "Programer",
  "Marketing",
  "More++",
];

// data listviw builder
final List<Map<String, dynamic>> contentRecommended = [
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/203917997-3119e406-944f-441a-bac1-99f4ff064305.png",
    "jobstitle": "Senior Product Designer at\nTwitter",
    "salary": "\$3.000 - \$4.000 / Month",
    "subjobs": "Figma - XD - UI/UX",
    "location": "Tokyo - Full time",
    "jobspost": "Today",
    "subjobstitle": "Senior Product Designer",
    "company": "Twitter",
    "timework": "Full Time",
    "locationwork": "Tokyo, Japan",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/203921132-759a14ea-3c60-4171-b790-75de9e0525ea.png",
    "jobstitle": "Junior Graphic Designer at South\nDakota University",
    "salary": "\$2.500 - \$3.000 / Month",
    "subjobs": "Adobe - Ilustrator",
    "location": "South Dakota - Full time",
    "jobspost": "Today",
    "subjobstitle": "Junior Graphic Designer",
    "company": "Instagram",
    "timework": "Full Time",
    "locationwork": "South Dakota, Germany",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/203921769-1bb7f079-9fa1-4e00-b770-f2a0356cae10.png",
    "jobstitle": "Front End Developer at\nStarbucks",
    "salary": "\$3.500 - \$4.000 / Month",
    "subjobs": "Javascripts",
    "location": "Tokyo - Full time",
    "jobspost": "Today",
    "subjobstitle": "Front End Developer",
    "company": "Starbucks",
    "timework": "Full Time",
    "locationwork": "Tokyo, Japan",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070101-00578c4c-cda1-4e3a-abd9-74c3d0286b20.png",
    "jobstitle": "Senior Software Engineer at\nNetflix",
    "salary": "\$2.500 - \$3.000 / Month",
    "subjobs": "DevOps",
    "location": "London - (Remote)",
    "jobspost": "Today",
    "subjobstitle": "Senior Software Engineer",
    "company": "Netflix",
    "timework": "Remote",
    "locationwork": "London, United Kingdom",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070314-419ce624-330a-4be1-ab1f-e1f599dd893f.png",
    "jobstitle": "Graphic Designer at\nBMW",
    "salary": "\$5.500 - \$6.000 / Month",
    "subjobs": "Adobe Photoshop",
    "location": "Frankfurt, Germany",
    "jobspost": "Today",
    "subjobstitle": "Graphic Designer",
    "company": "BMW Corps",
    "timework": "Full Time",
    "locationwork": "Frankfurt, Germany",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070385-2fd0e322-d882-4c11-b25e-acc8d77d91d8.png",
    "jobstitle": "Industri Manager at\nGoogle",
    "salary": "\$1.500 - \$2.500 / Month",
    "subjobs": "HR",
    "location": "Jakarta, Indonesia",
    "jobspost": "Today",
    "subjobstitle": "Industri Manager",
    "company": "Google",
    "timework": "Remote",
    "locationwork": "Jakarta, Indonesia",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070437-69afc42c-f6db-4767-8bd3-c3d54873bbe1.png",
    "jobstitle": "Full Stack Developer at\nShopee",
    "salary": "\$5.500 - \$7.500 / Month",
    "subjobs": "Fullstack",
    "location": "Surabaya, Indonesia",
    "jobspost": "Today",
    "subjobstitle": "Full Stack Developer",
    "company": "Shopee",
    "timework": "Full Time",
    "locationwork": "Surabaya, Indonesia",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070523-1d0bda9a-17ac-4db1-a824-df619c9dfddf.png",
    "jobstitle": "Senior Business Controller at\nTokopedia",
    "salary": "\$3.500 - \$4.500 / Month",
    "subjobs": "Controller",
    "location": "Semarang - Full time",
    "jobspost": "Today",
    "subjobstitle": "Senior Business Controller",
    "company": "Tokopedia",
    "timework": "Full Time",
    "locationwork": "Semarang, Indonesia",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070720-5ad795e3-a909-4341-a869-006d068459a5.png",
    "jobstitle": "Facebook Ads Specialist at\nFacebook",
    "salary": "\$1.500 - \$2.500 / Month",
    "subjobs": "Ads",
    "location": "Jakarta - Full time",
    "jobspost": "Today",
    "subjobstitle": "Facebook Ads Specialist",
    "company": "Facebook",
    "timework": "Full Time",
    "locationwork": "Jakarta, Indonesia",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "logos":
        "https://user-images.githubusercontent.com/109071310/204070662-27eb19ab-285c-44f1-8c7a-37a436f7420f.png",
    "jobstitle": "Back End Developer at\nKominfo Indonesia",
    "salary": "\$1.000 - \$3.500 / Month",
    "subjobs": "Ads",
    "location": "Jakarta - (Remote)",
    "jobspost": "Today",
    "subjobstitle": "Back End Developer",
    "company": "Kominfo",
    "timework": "Remote",
    "locationwork": "Jakarta, Indonesia",
    "jobdesc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
];

// class BookmarkProvider extends ChangeNotifier {
//   // data listviw builder
//   final List<Map<String, dynamic>> contentRecommended = [
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/203917997-3119e406-944f-441a-bac1-99f4ff064305.png",
//       "jobstitle": "Senior Product Designer at\nTwitter",
//       "salary": "\$3.000 - \$4.000 / Month",
//       "subjobs": "Figma - XD - UI/UX",
//       "location": "Tokyo - Full time",
//       "jobspost": "Today",
//       "subjobstitle": "Senior Product Designer",
//       "company": "Twitter",
//       "timework": "Full Time",
//       "locationwork": "Tokyo, Japan",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/203921132-759a14ea-3c60-4171-b790-75de9e0525ea.png",
//       "jobstitle": "Junior Graphic Designer at South\nDakota University",
//       "salary": "\$2.500 - \$3.000 / Month",
//       "subjobs": "Adobe - Ilustrator",
//       "location": "South Dakota - Full time",
//       "jobspost": "Today",
//       "subjobstitle": "Junior Graphic Designer",
//       "company": "Instagram",
//       "timework": "Full Time",
//       "locationwork": "South Dakota, Germany",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/203921769-1bb7f079-9fa1-4e00-b770-f2a0356cae10.png",
//       "jobstitle": "Front End Developer at\nStarbucks",
//       "salary": "\$3.500 - \$4.000 / Month",
//       "subjobs": "Javascripts",
//       "location": "Tokyo - Full time",
//       "jobspost": "Today",
//       "subjobstitle": "Front End Developer",
//       "company": "Starbucks",
//       "timework": "Full Time",
//       "locationwork": "Tokyo, Japan",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070101-00578c4c-cda1-4e3a-abd9-74c3d0286b20.png",
//       "jobstitle": "Senior Software Engineer at\nNetflix",
//       "salary": "\$2.500 - \$3.000 / Month",
//       "subjobs": "DevOps",
//       "location": "London - (Remote)",
//       "jobspost": "Today",
//       "subjobstitle": "Senior Software Engineer",
//       "company": "Netflix",
//       "timework": "Remote",
//       "locationwork": "London, United Kingdom",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070314-419ce624-330a-4be1-ab1f-e1f599dd893f.png",
//       "jobstitle": "Graphic Designer at\nBMW",
//       "salary": "\$5.500 - \$6.000 / Month",
//       "subjobs": "Adobe Photoshop",
//       "location": "Frankfurt, Germany",
//       "jobspost": "Today",
//       "subjobstitle": "Graphic Designer",
//       "company": "BMW Corps",
//       "timework": "Full Time",
//       "locationwork": "Frankfurt, Germany",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070385-2fd0e322-d882-4c11-b25e-acc8d77d91d8.png",
//       "jobstitle": "Industri Manager at\nGoogle",
//       "salary": "\$1.500 - \$2.500 / Month",
//       "subjobs": "HR",
//       "location": "Jakarta, Indonesia",
//       "jobspost": "Today",
//       "subjobstitle": "Industri Manager",
//       "company": "Google",
//       "timework": "Remote",
//       "locationwork": "Jakarta, Indonesia",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070437-69afc42c-f6db-4767-8bd3-c3d54873bbe1.png",
//       "jobstitle": "Full Stack Developer at\nShopee",
//       "salary": "\$5.500 - \$7.500 / Month",
//       "subjobs": "Fullstack",
//       "location": "Surabaya, Indonesia",
//       "jobspost": "Today",
//       "subjobstitle": "Full Stack Developer",
//       "company": "Shopee",
//       "timework": "Full Time",
//       "locationwork": "Surabaya, Indonesia",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070523-1d0bda9a-17ac-4db1-a824-df619c9dfddf.png",
//       "jobstitle": "Senior Business Controller at\nTokopedia",
//       "salary": "\$3.500 - \$4.500 / Month",
//       "subjobs": "Controller",
//       "location": "Semarang - Full time",
//       "jobspost": "Today",
//       "subjobstitle": "Senior Business Controller",
//       "company": "Tokopedia",
//       "timework": "Full Time",
//       "locationwork": "Semarang, Indonesia",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070720-5ad795e3-a909-4341-a869-006d068459a5.png",
//       "jobstitle": "Facebook Ads Specialist at\nFacebook",
//       "salary": "\$1.500 - \$2.500 / Month",
//       "subjobs": "Ads",
//       "location": "Jakarta - Full time",
//       "jobspost": "Today",
//       "subjobstitle": "Facebook Ads Specialist",
//       "company": "Facebook",
//       "timework": "Full Time",
//       "locationwork": "Jakarta, Indonesia",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//     {
//       "logos":
//           "https://user-images.githubusercontent.com/109071310/204070662-27eb19ab-285c-44f1-8c7a-37a436f7420f.png",
//       "jobstitle": "Back End Developer at\nKominfo Indonesia",
//       "salary": "\$1.000 - \$3.500 / Month",
//       "subjobs": "Ads",
//       "location": "Jakarta - (Remote)",
//       "jobspost": "Today",
//       "subjobstitle": "Back End Developer",
//       "company": "Kominfo",
//       "timework": "Remote",
//       "locationwork": "Jakarta, Indonesia",
//       "jobdesc":
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
//     },
//   ];

//   final List<Map<String, dynamic>> _contentRecommended = [];

//   void toogleBookmark(dynamic){
//     final isExist = _contentRecommended.contains(contentRecommended);
//     if(isExist){
//       _contentRecommended.remove(contentRecommended);
//     } else {
//       _contentRecommended.add(contentRecommended);
//     }
//   }

// }

final List<Map<String, dynamic>> requirement = [
  {
    "a": "Bachelors degree in Graphic Design",
    "b":
        "At least 3 years experisnce and strong ability to\ndesign with Figma,Skecth and Adobe XD",
    "c":
        "Have a strong portofolio demonstrating an ability\n to work across a range of visual styles",
    "d":
        "Development of Mobile wireframes, prototypes and\ncoordination of digital design projects",
    "e":
        "Development of visual languange and documentation\nof design works and assets"
  }
];
