import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduat/patient_views/create.dart';
// import 'package:graduat/Doctor_views/login.dart';
// import 'package:graduat/admin_views/login.dart';
// import 'package:graduat/lab_views/login.dart';
import 'package:graduat/patient_views/login.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: loginDoctor(), //doctor views
      // home: loginAdmin(),      //admin views
      // home: loginlab(), //lab views
      home: loginPatient(), //patient views
    );
  }
}
