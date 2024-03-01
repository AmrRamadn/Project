

import 'package:flutter/material.dart';

import '../patient_views/home_view.dart';

class  custombutton extends StatelessWidget {
  custombutton({this.textt});
  String? textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration : BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return PatientHomeView();
              }));
        },
        child: Text(
         " ${textt}",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
