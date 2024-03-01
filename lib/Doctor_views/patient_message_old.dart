import 'package:flutter/material.dart';

class MessageOld extends StatelessWidget {
  const MessageOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'messages',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black38,
                  width: 2,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'the patient.........',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
