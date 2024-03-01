import 'package:flutter/material.dart';
import 'package:graduat/lab_views/send_test_view.dart';
import 'package:graduat/lab_views/test_home_view.dart';

class LabHomeView extends StatelessWidget {
  const LabHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome Laboratory Name',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: Column(children: [
          const SizedBox(height: 100),
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  SendTestHome();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Patient's tests",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold), // Optional text styling
                  ),
                  SizedBox(width: 60),
                  // Icon(
                  //   Icons.send,
                  //   size: 30.0,
                  // ), // Add spacing between icon and text
                  Image.asset(
                    'assets/download2.png',
                    width: 60, // Adjust image width as needed
                    height: 60, // Adjust image height as needed
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 60),
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SendTest();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Send tests',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold), // Optional text styling
                  ),
                  SizedBox(width: 110),
                  Icon(
                    Icons.send,
                    size: 50.0,
                  ), // Add spacing between icon and text
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
        ]),
      ),
    );
  }
}
