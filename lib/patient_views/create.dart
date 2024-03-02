import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:graduat/widgets/textfilt.dart';

import 'login.dart'; // Import Firestore

class Regist extends StatefulWidget {
  const Regist({Key? key}) : super(key: key);

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _leftCheekSelected = false;
  bool _rightCheekSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff324E6B),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Create an Account',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
          child: Container(
            child: Column(
              children: [
                const Text(
                  'Create an account to detect your health conditions',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFilt(
                    hintText: 'البريد الالكتروني', controller: _emailController),
                TextFilt(hintText: 'الاسم', controller: _nameController),
                TextFilt(hintText: 'العنوتن', controller: _addressController),
                TextFilt(hintText: 'رقم الهاتف', controller: _phoneController),
                TextFilt(
                    hintText: 'الرقم السري', controller: _passwordController),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    color: Color(0xff324E6B),
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'هل لديك امراض وراثيه',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text("هل لديك مرض السكر",
                            style: TextStyle(color: Colors.white)),
                        value: _leftCheekSelected,
                        onChanged: (value) {
                          setState(() {
                            _leftCheekSelected = !_leftCheekSelected;
                          });
                        },
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text("هل لديك مرض الضغط",
                            style: TextStyle(color: Colors.white)),
                        value: _rightCheekSelected,
                        onChanged: (value) {
                          setState(() {
                            _rightCheekSelected = !_rightCheekSelected;
                          });
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _registerWithEmailAndPassword();
                    },
                    child: Text(
                      'انشاء حساب',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return LoginPatient();
                        }));
                  },
                  child: const Text(
                    'هل لديك حساب بالفعل',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _registerWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Map<String, dynamic> userData = {
        'name': _nameController.text,
        'address': _addressController.text,
        'phone': _phoneController.text,
        'hasDiabetes': _leftCheekSelected,
        'hasHypertension': _rightCheekSelected,
      };

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user?.uid)
          .set(userData);

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPatient();
      }));
    } on FirebaseAuthException catch (e) {
      print("Error: ${e.message}");
    }
  }
}
