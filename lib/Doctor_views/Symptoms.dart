import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Patient_Report.dart';
import 'package:graduat/Doctor_views/X-rays.dart';
import 'package:graduat/Doctor_views/patient_messages.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({super.key});

  @override
  Widget build(BuildContext context) {
    void openX_rays() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return X_rays();
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 5, // Space between underline and text
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Color(0xff1E42B1),
                  width: 5.0,
                ))),
                child: Text(
                  'Symptoms',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: GestureDetector(
                  onTap: openX_rays,
                  child: Text(
                    'X-rays and tests',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 600,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Patient_Report();
                  }));
                },
                child: Text(
                  'Send a report',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PatientMessage();
                  }));
                },
                child: Text(
                  'Send a message',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
