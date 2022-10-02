import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Result page'),
        ),
      ),
    );
  }
}
