import 'package:flutter/material.dart';
import 'package:graduat/lab_views/test_Done_view.dart';
import 'package:graduat/lab_views/test_schedule_view.dart';

class SendTestHome extends StatefulWidget {
  SendTestHome({super.key});

  @override
  State<SendTestHome> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SendTestHome> {
  bool showUpcoming = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Patients",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.red,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: ImageIcon(
                  AssetImage("assets/img_1.png"),
                ),
                label: "Schedule"),
            BottomNavigationBarItem(
                backgroundColor: Colors.brown,
                icon: ImageIcon(
                  AssetImage("assets/img_2.png"),
                ),
                label: "Done"),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Expanded(child: tabs[index]),
            ],
          ),
        ));
  }

  List<Widget> tabs = [schedule(), Done()];
}
