import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/consultation_home_view.dart';
import 'package:graduat/widgets/custom_form.dart';

class AddConsulation extends StatelessWidget {
  const AddConsulation({super.key});

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
            "Consulation",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CustomFormFeild("ID"),
          CustomFormFeild("Status"),
          CustomFormFeild("Time"),
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
                  return  HomeScreen();
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
