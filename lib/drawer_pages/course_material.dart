import 'package:flutter/material.dart';

class CourseMaterial extends StatelessWidget {
  const CourseMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Material'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Course material page'),
        ),
      ),
    );
  }
}
