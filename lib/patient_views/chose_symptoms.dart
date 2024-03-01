import 'package:flutter/material.dart';

class chosesymptoms extends StatefulWidget {
  const chosesymptoms({super.key});

  @override
  State<chosesymptoms> createState() => _chosesymptomsState();
}

class _chosesymptomsState extends State<chosesymptoms> {
  bool _CheekSelected1 = false;
  bool _CheekSelected2 = false;
  bool _CheekSelected3 = false;
  bool _CheekSelected4 = false;
  bool _CheekSelected5 = false;
  bool _CheekSelected6 = false;
  bool _CheekSelected7 = false;
  bool _CheekSelected8 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData.fallback(),
          title: Center(
            child: const Text(
              "اختار المكان الذي يؤلمك",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/eye.png'),
                        ),
                      ),
                      child: CheckboxListTile(

                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected1,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected1 = !_CheekSelected1;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/nose.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected2,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected2 = !_CheekSelected2;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/head.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected3,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected3 = !_CheekSelected3;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/ears.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected4,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected4 = !_CheekSelected4;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/heart.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected5,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected5 = !_CheekSelected5;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/back.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected6,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected6 = !_CheekSelected6;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/leg.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected7,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected7 = !_CheekSelected7;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/stomach.png'),
                        ),
                      ),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: _CheekSelected8,
                        onChanged: (value) {
                          setState(() {
                            _CheekSelected8 = !_CheekSelected8;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const AdminSymptoms();
                  // }));
                },
                child: Text(
                  'التالي',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
              ),
            ],
          ),
        ));
  }
}
