// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/colors.dart';
import 'package:flutter/material.dart';

class NotificationsPages extends StatelessWidget {
  const NotificationsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // custom app bar
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
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
                  'Notifications',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),

          // content
          
        ],
      ),
    );
  }
}
