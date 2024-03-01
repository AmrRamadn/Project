import 'package:flutter/material.dart';

class TextFilt extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool? isPassword; // Add this line

  TextFilt({this.hintText, this.controller, this.isPassword}); // Update this line

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        controller: controller,
        obscureText: isPassword ?? false, // Add this line
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(17)),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

