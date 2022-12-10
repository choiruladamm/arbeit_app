// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:arbeit_app/boxes.dart';
import 'package:arbeit_app/models/userModel.dart';
import 'package:arbeit_app/screens/applicants_pages.dart';
import 'package:arbeit_app/widgets/colors.dart';
import 'package:arbeit_app/widgets/get_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SubmitJobPages extends StatefulWidget {
  final submitJob;
  const SubmitJobPages({super.key, this.submitJob});

  @override
  State<SubmitJobPages> createState() => _SubmitJobPagesState();
}

class _SubmitJobPagesState extends State<SubmitJobPages> {
  final _formKey = GlobalKey<FormState>();

  final conId = TextEditingController();
  final conName = TextEditingController();
  final conEmail = TextEditingController();

  @override
  void dispose() {
    Hive.close(); // Closing All Boxes

    Hive.box('users').close(); // Closing Selected Box

    Hive.openBox('users');

    super.dispose();
  }

  Future<void> addUser(String uId, String uName, String uEmail) async {
    if (_formKey.currentState!.validate()) {
      await Hive.openBox("users");
      _formKey.currentState!.save();

      final user = UserModel()
        ..user_id = uId
        ..user_name = uName
        ..email = uEmail;

      final box = Boxes.getUsers();
      //Key Auto Increment
      box.add(user).then((value) => clearPage());
    }
  }

  Future<void> editUser(UserModel userModel) async {
    conId.text = userModel.user_id;
    conName.text = userModel.user_name;
    conEmail.text = userModel.email;

    deleteUser(userModel);
    await Hive.openBox("users");

    // if you want to do with key you can use that too.

    //box.put("myKey", user);
    //final myBox = Boxes.getUsers();
    //final myUser = myBox.get("myKey");
    //myBox.values; // Access All Values
    //myBox.keys; // Access By Key
  }

  Future<void> deleteUser(UserModel userModel) async {
    userModel.delete();
    await Hive.openBox("users");
  }

  clearPage() {
    conId.text = '';
    conName.text = '';
    conEmail.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Posisiton Jobs",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    genTextFormField(
                      controller: conId,
                      hintName: "Posisition",
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    genTextFormField(
                      controller: conName,
                      hintName: "Your Name",
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    genTextFormField(
                      controller: conEmail,
                      hintName: "Your Email",
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () =>
                            addUser(conId.text, conName.text, conEmail.text),
                        child: Text('Submit'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => clearPage,
                        child: Text('Clear'),
                      ),
                    ),
                  ],
                ),
              ),

              // button lihat jobs apply
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: GestureDetector(
                  onTap: () async {
                    final users = await Hive.openBox<UserModel>('users');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApplicantsPages()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: primaryColors,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'See My Apply Jobs',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // // Logos
              // // Padding(
              // //   padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
              // //   child: Row(
              // //     children: [
              // //       Container(
              // //         height: 50,
              // //         width: 50,
              // //         decoration: BoxDecoration(
              // //           image: DecorationImage(
              // //             image: NetworkImage(
              // //               widget.submitJob['logos'],
              // //               scale: 9,
              // //             ),
              // //           ),
              // //         ),
              // //       ),
              // //       SizedBox(width: 15),
              // //       Column(
              // //         crossAxisAlignment: CrossAxisAlignment.start,
              // //         children: [
              // //           Text(
              // //             widget.submitJob['subjobstitle'],
              // //             style: TextStyle(
              // //               fontSize: 16,
              // //               fontWeight: FontWeight.w600,
              // //             ),
              // //           ),
              // //           SizedBox(height: 5),
              // //           Text(
              // //             widget.submitJob['company'],
              // //             style: TextStyle(
              // //               color: Colors.grey,
              // //               fontSize: 14,
              // //               fontWeight: FontWeight.w500,
              // //             ),
              // //           ),
              // //         ],
              // //       ),
              // //     ],
              // //   ),
              // // ),

              // // form full name
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 20, top: 20),
              //       child: Text(
              //         "Full name",
              //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              //       child: TextFormField(
              //         style: TextStyle(
              //           fontSize: 13,
              //         ),
              //         decoration: InputDecoration(
              //           filled: true,
              //           fillColor: primaryColorsBackground,
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10),
              //             borderSide: BorderSide.none,
              //           ),
              //           contentPadding:
              //               EdgeInsets.only(top: 10, bottom: 10, left: 20),
              //           hintText: 'Enter your name',
              //           hintStyle: TextStyle(fontSize: 13),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // // form email
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 20, top: 20),
              //       child: Text(
              //         "Email",
              //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              //       child: TextFormField(
              //         style: TextStyle(
              //           fontSize: 13,
              //         ),
              //         decoration: InputDecoration(
              //           filled: true,
              //           fillColor: primaryColorsBackground,
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10),
              //             borderSide: BorderSide.none,
              //           ),
              //           contentPadding:
              //               EdgeInsets.only(top: 10, bottom: 10, left: 20),
              //           hintText: 'Enter your email',
              //           hintStyle: TextStyle(fontSize: 13),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // // form phone
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 20, top: 20),
              //       child: Text(
              //         "Phone",
              //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              //       child: TextFormField(
              //         keyboardType: TextInputType.number,
              //         style: TextStyle(
              //           fontSize: 13,
              //         ),
              //         decoration: InputDecoration(
              //           filled: true,
              //           fillColor: primaryColorsBackground,
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10),
              //             borderSide: BorderSide.none,
              //           ),
              //           contentPadding:
              //               EdgeInsets.only(top: 10, bottom: 10, left: 20),
              //           hintText: 'Enter your phone',
              //           hintStyle: TextStyle(fontSize: 13),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
