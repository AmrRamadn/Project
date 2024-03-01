import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Symptoms.dart';

class X_rays extends StatelessWidget {
  const X_rays({super.key});

  @override
  Widget build(BuildContext context) {
    void openSymptoms() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Symptoms();
          },
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: GestureDetector(
                  onTap: openSymptoms,
                  child: Text(
                    'Symptoms',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 5, // Space between underline and text
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff1E42B1),
                      width: 5.0,
                    ),
                  ),
                ),
                child: Text(
                  'X-rays and tests',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 60,),
          Container(
            height: 450,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
