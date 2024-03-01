import 'package:flutter/material.dart';
import 'package:graduat/patient_views/Report_schedule_view.dart';
import 'package:graduat/patient_views/chose_symptoms.dart';
import 'package:graduat/patient_views/news_tips_view.dart';
import 'package:graduat/patient_views/notification_view.dart';

class PatientHomeView extends StatelessWidget {
  const PatientHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                // IconButton(
                //   icon: Icon(
                //     Icons.subdirectory_arrow_left,
                //     size: 40,
                //   ), // Replace with your desired icon
                //   onPressed: () {
                //     //djhgskjdhjkghkfhklf
                //   },
                // ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Welcome Patient Name',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    size: 40,
                  ), // Replace with your desired icon
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Notification2();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 400.0,
            height: 180.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  chosesymptoms();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Submit a medical',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                      Text(
                        'complaint',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                    ],
                  ),
                  SizedBox(width: 60), // Add spacing between icon and text
                  Icon(
                    Icons.medical_services,
                    size: 50.0,
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
                  return const ReportSchedule();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'doctor responded ',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                      Text(
                        'to the complaint',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                    ],
                  ),
                  SizedBox(width: 50), // Add spacing between icon and text
                  Icon(
                    Icons.report,
                    size: 50.0,
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
                  return const NewsTipsPage();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Information ',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                      Text(
                        'for better health',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold), // Optional text styling
                      ),
                    ],
                  ),
                  SizedBox(width: 80), // Add spacing between icon and text
                  Icon(
                    Icons.medical_information,
                    size: 50.0,
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
