// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class SubmitJobPages extends StatefulWidget {
  final submitJob;
  const SubmitJobPages({super.key, this.submitJob});

  @override
  State<SubmitJobPages> createState() => _SubmitJobPagesState();
}

class _SubmitJobPagesState extends State<SubmitJobPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Apply Jobs',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // Logos
            // Padding(
            //   padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 50,
            //         width: 50,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: NetworkImage(
            //               widget.submitJob['logos'],
            //               scale: 9,
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 15),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             widget.submitJob['subjobstitle'],
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w600,
            //             ),
            //           ),
            //           SizedBox(height: 5),
            //           Text(
            //             widget.submitJob['company'],
            //             style: TextStyle(
            //               color: Colors.grey,
            //               fontSize: 14,
            //               fontWeight: FontWeight.w500,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            // form verify
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "Verify Details",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // form full name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Full name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: primaryColorsBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),

            // form email
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: primaryColorsBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),

            // form phone
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Phone",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: primaryColorsBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      hintText: 'Enter your phone',
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
            
            // button submit jobs
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryColors,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
