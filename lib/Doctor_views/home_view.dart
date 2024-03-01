import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Reservations_view.dart';
import 'package:graduat/Doctor_views/contact_library_view.dart';
import 'package:graduat/Doctor_views/patient_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              'Welcome Doctor Name',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: Column(children: [
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Patients();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Patients Detection',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold), // Optional text styling
                  ),
                  SizedBox(width: 20), // Add spacing between icon and text
                  Image.asset(
                    'assets/patient-heart-test-vector-icon-260nw-208483537.webp',
                    width: 60, // Adjust image width as needed
                    height: 60, // Adjust image height as needed
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Reservations();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Reservations',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold), // Optional text styling
                  ),
                  SizedBox(width: 80), // Add spacing between icon and text
                  Image.asset(
                    'assets/images (1).png',
                    width: 60, // Adjust image width as needed
                    height: 60, // Adjust image height as needed
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ContactLibrart();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'laboratory',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold), // Optional text styling
                  ),
                  SizedBox(width: 120), // Add spacing between icon and text
                  Image.asset(
                    'assets/download.png',
                    width: 60, // Adjust image width as needed
                    height: 60, // Adjust image height as needed
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
