import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormFeild extends StatelessWidget {
  String hint;
  TextInputType? keyboard;
  TextEditingController? controller;
  CustomFormFeild(this.hint, {this.controller, this.keyboard=TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(20),
      // padding: EdgeInsets.all(1),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        decoration: InputDecoration(
            labelText: hint,
            labelStyle: TextStyle(fontSize: 22),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                borderSide: BorderSide(width: 5, style: BorderStyle.solid),
                gapPadding: 20)),
                keyboardType: keyboard,
      ),
    );
  }
}
