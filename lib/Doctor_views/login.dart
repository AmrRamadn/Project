import 'package:flutter/material.dart';
import 'package:graduat/Doctor_views/home_view.dart';

class loginDoctor extends StatelessWidget {
  const loginDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
            ),
            Text('تسجيل دخول',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent)),
            Column(
              children: [
                Text(
                  'مرحبا بعودتك',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'رقم الهويه الوطنيه',
                      labelText: 'رقم الهويه الوطنيه',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'كلمه المرور',
                        labelText: 'كلمه المرور',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(17)),
                            borderSide: BorderSide(color: Colors.blue)),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeView();
                    }));
                  },
                  child: Text('تسجيل الدخول'),
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
