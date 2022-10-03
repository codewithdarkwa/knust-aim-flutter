import 'package:flutter/material.dart';

class LecturerAssessment extends StatelessWidget {
  const LecturerAssessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecturer Assessment'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Select a Lecturer to Access',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
