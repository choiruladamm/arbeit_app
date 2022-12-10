// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:arbeit_app/boxes.dart';
import 'package:arbeit_app/models/userModel.dart';
import 'package:arbeit_app/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ApplicantsPages extends StatefulWidget {
  const ApplicantsPages({super.key});

  @override
  State<ApplicantsPages> createState() => _ApplicantsPagesState();
}

class _ApplicantsPagesState extends State<ApplicantsPages> {
  final _formKey = GlobalKey<FormState>();

  final conId = TextEditingController();
  final conName = TextEditingController();
  final conEmail = TextEditingController();

  @override
  void dispose() {
    Hive.close(); // Closing All Boxes

    Hive.box('users').close();// Closing Selected Box

    super.dispose();
  }

  Future<void> addUser(String uId, String uName, String uEmail) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final user = UserModel()
        ..user_id = uId
        ..user_name = uName
        ..email = uEmail;

      final box = Boxes.getUsers();
      //Key Auto Increment
      box.add(user).then((value) => clearPage());
      await Hive.openBox("users");

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    'Your Apply Jobs',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1000,
              child: ValueListenableBuilder(
                valueListenable: Boxes.getUsers().listenable(),
                builder: (BuildContext context, Box box, Widget? child) {
                  final users = box.values.toList().cast<UserModel>();
                  return genContent(users);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget genContent(List<UserModel> user) {
    if (user.isEmpty) {
      return Center(
        child: Text(
          "No Users Found",
          style: TextStyle(fontSize: 20),
        ),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: user.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Card(
              color: primaryColorsBackground,
              child: ExpansionTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // ignore: unnecessary_string_interpolations
                      "${user[index].user_id}",
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    Text(
                      // ignore: unnecessary_string_interpolations
                      "${user[index].email}",
                      maxLines: 2,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                subtitle: Text(user[index].user_name),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                    child: GestureDetector(
                      onTap: () => deleteUser(user[index]),
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text('Delete Aplly Jobs', style: TextStyle(fontSize: 16, color: Colors.white))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
