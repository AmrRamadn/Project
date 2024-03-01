import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/Surgery_home_view.dart';
import 'package:graduat/Doctor_views/consultation_home_view.dart';
class Reservations extends StatelessWidget {
  const Reservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IconButton(
              icon: Image.asset(
                'assets/images.png',
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
            ),
            SizedBox(height: 10),
            Text(
              'consultation',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold), // Optional text styling
            ),
            SizedBox(height: 50),
            IconButton(
              icon: Image.asset(
                'assets/360.jpg',
              ),
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen2();
                }));
              },
            ),
            SizedBox(height: 10),
            Text(
              'Surgery',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold), // Optional text styling
            ),
          ],
        ),
      ),
    );
  }
}
