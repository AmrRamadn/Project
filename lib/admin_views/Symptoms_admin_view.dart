import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/X-rays.dart';
import 'package:graduat/admin_views/search_doctor_views.dart';

class AdminSymptoms extends StatelessWidget {
  const AdminSymptoms({super.key});

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
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Symptoms',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 700,
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
                    return const SearchDoctor();
                  }));
                },
                child: Text(
                  'Send to doctor',
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
