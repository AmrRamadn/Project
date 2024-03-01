import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 5, top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Status"),
                      Text("Date : 15/2/2024"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    iconSize: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Status"),
                      Text("Date : 15/2/2024"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    iconSize: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Status"),
                      Text("Date : 15/2/2024"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    iconSize: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient : Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Status"),
                      Text("Date : 15/2/2024"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    iconSize: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // margin: EdgeInsets.only(left: 5,top: 50),
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/img.png")),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Name:Amr ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Status"),
                      Text("Date : 15/2/2024"),
                    ],
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_box),
                    iconSize: 30,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
