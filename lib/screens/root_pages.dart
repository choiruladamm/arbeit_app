// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/widgets/colors.dart';
import 'package:arbeit_app/screens/applicants_pages.dart';
import 'package:arbeit_app/screens/home_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:unicons/unicons.dart';

class RootPages extends StatefulWidget {
  const RootPages({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RootPagesState createState() => _RootPagesState();
}

class _RootPagesState extends State<RootPages> {
  final pageNav = [
    HomePages(),
    ApplyPages(),
    MessagesPages(),
    ProfilePages(),
  ];

  int selectedIndex = 0;

  void onTabChange (int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: primaryColors,
            gap: 5,
            padding: EdgeInsets.all(6),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: CupertinoIcons.bag,
                text: 'Applicants',
              ),
              GButton(
                icon: UniconsLine.message,
                text: 'Messages',
              ),
              GButton(
                icon: CupertinoIcons.person,
                text: 'User',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: onTabChange,
          ),
        ),
      ),
      body: pageNav.elementAt(selectedIndex),
    );
  }
}

class ApplyPages extends StatelessWidget {
  const ApplyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MessagesPages extends StatelessWidget {
  const MessagesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
