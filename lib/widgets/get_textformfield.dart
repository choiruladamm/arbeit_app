// ignore_for_file: prefer_const_constructors
// ignore_for_file: must_be_immutable, camel_case_types, body_might_complete_normally_nullable

import 'package:arbeit_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class genTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintName;
  TextInputType textInputType;

  genTextFormField({
    super.key,
    required this.controller,
    required this.hintName,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      style: TextStyle(fontSize: 13),
      decoration: InputDecoration(
        hintText: hintName,
        hintStyle: TextStyle(fontSize: 13),
        fillColor: primaryColorsBackground,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter $hintName';
        }
        if (hintName == "Email" && !validateEmail(value)) {
          return 'Please Enter Valid Email';
        }
      },
    );
  }
}

validateEmail(String email) {
  final emailReg = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailReg.hasMatch(email);
}
