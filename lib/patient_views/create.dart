import 'package:flutter/material.dart';
import 'package:graduat/patient_views/login.dart';

import '../widgets/button.dart';
import '../widgets/textfilt.dart';

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  bool _leftCheekSelected = false;
  bool _rightCheekSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff324E6B),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('انشاءحساب',
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
                  'قم بانشاء حساب حتي تتمكن من الكشف عن المرض الذي تشعر به',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                textfilt(hintText: 'رقم الهويه الوطنيه',),
                textfilt(hintText: 'الاسم',),
                textfilt(hintText: 'العنوان',),
                textfilt(hintText:  'رقم الجوال',),
                textfilt(hintText: 'كلمه المرور',),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  // color: Color(0xff324E6B),
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
                    // borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    // Use Row for horizontal alignment
                    mainAxisAlignment:
                        MainAxisAlignment.end, // Align checkbox to the right
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'هل لديك امراض وراثيه',
                            hintStyle: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text("هل لديك مرض السكر", style: TextStyle(color: Colors.white),),
                        value: _leftCheekSelected,
                        onChanged: (value) {
                          setState(() {
                            _leftCheekSelected = !_leftCheekSelected;
                          });
                        },
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text("هل لديك مرض الضغط",style: TextStyle(color: Colors.white)),
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
                  decoration : BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPatient();
                          }));
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
                        }));                  },
                  child: const Text(
                    'لديك حساب بالفعل',
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
}
