import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Symptoms.dart';

class Patients extends StatelessWidget {
  const Patients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'show patient',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 5, top: 20),
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
                    width: 5,
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
                  ElevatedButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Symptoms();
                    }));
                    },
                    child: Text(
                      'view symotoms',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1E41BD), minimumSize: Size(50, 45)),
                  ),
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
                    width: 5,
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
                  ElevatedButton(
                    onPressed: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Symptoms();
                    }));
                    },
                    child: Text(
                      'view symotoms',
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
                    width: 5,
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
                  ElevatedButton(
                    onPressed: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Symptoms();
                    }));
                    },
                    child: Text(
                      'view symotoms',
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
                    width: 5,
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
                  ElevatedButton(
                    onPressed: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Symptoms();
                    }));
                    },
                    child: Text(
                      'view symotoms',
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
                    width: 5,
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
                  ElevatedButton(
                    onPressed: () 
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const Symptoms();
                    }));
                    },
                    child: Text(
                      'view symotoms',
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
        ),
      ),
    );
  }
}
