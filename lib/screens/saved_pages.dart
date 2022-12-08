// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class SavedPages extends StatefulWidget {
  const SavedPages({super.key});

  @override
  State<SavedPages> createState() => _SavedPagesState();
}

class _SavedPagesState extends State<SavedPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: primaryColorsBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: primaryColors,
                          size: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Saved Jobs',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: primaryColorsBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: primaryColors,
                    size: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
