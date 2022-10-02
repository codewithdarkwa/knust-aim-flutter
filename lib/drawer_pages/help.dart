import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Feedback'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Not yet implemented'),
        ),
      ),
    );
  }
}
