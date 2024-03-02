import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduat/patient_views/create.dart';
import 'package:graduat/patient_views/home_view.dart';
import 'package:graduat/widgets/button.dart';
import '../widgets/textfilt.dart';

class LoginPatient extends StatefulWidget {
  const LoginPatient({Key? key}) : super(key: key);

  @override
  _LoginPatientState createState() => _LoginPatientState();
}

class _LoginPatientState extends State<LoginPatient> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _nationalIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff324E6B),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 90, backgroundImage: AssetImage("assets/logo.png")),
              Text('Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent)),
              Column(
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFilt(
                    controller: _nationalIdController,
                    hintText: 'البريد الالكتروني',
                  ),
                  TextFilt(
                    controller: _passwordController,
                    hintText: 'الرقم السري',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _signInWithEmailAndPassword();
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const Regist();
                          }));
                    },
                    child: Text(
                        'Create a new account',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _nationalIdController.text, // Use email as the username
        password: _passwordController.text,
      );

      // If login is successful, navigate to the home view
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PatientHomeView();
      }));
    } on FirebaseAuthException catch (e) {
      // Handle login errors (e.g., invalid credentials)
      print("Error: ${e.message}");
      // TODO: Show an error message to the user
    }
  }

}
