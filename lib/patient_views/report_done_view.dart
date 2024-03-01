import 'package:flutter/material.dart';
import 'package:graduat/patient_views/Report_schedule_view.dart';

class ReportDone extends StatelessWidget {
  const ReportDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Old Report'),
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Report',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black, width: 3)),
            width: 350,
            height: 120,
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            child: Text(
              'The patient suffers from abdominal pain as a result of stomach infections.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.2,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black, width: 3)),
            width: 350,
            height: 120,
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            child: Text(
              'The patient suffers from abdominal pain as a result of stomach infections.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.2,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black, width: 3)),
            width: 350,
            height: 120,
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            child: Text(
              'The patient suffers from abdominal pain as a result of stomach infections.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.2,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ReportSchedule()));
            },
            child: Text('UNCOMING'),
          )
        ],
      ),
    );
  }
}
