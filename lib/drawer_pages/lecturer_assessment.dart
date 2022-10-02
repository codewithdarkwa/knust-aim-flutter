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
      body: const SafeArea(
        child: Center(
          child: Text('Lecturer Assessment page'),
        ),
      ),
    );
  }
}
