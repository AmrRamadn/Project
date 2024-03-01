import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Surgery_home_view.dart';
import 'package:graduat/widgets/custom_form.dart';

class AddSurgery extends StatelessWidget {
  const AddSurgery({super.key});

  static const String routeName = 'add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          Text(
            "Surgery",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CustomFormFeild("ID"),
          CustomFormFeild("Status"),
          CustomFormFeild("Room No"),
          CustomFormFeild("Date"),
          CustomFormFeild("Patient"),
          CustomFormFeild("Doctor"),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                Colors.green,
              )),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen2();
                }));
              },
              child: Text(" Add", style: TextStyle(fontSize: 22)),
            ),
          )
        ],
      ),
    );
  }
}
