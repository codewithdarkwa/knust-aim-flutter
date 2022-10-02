import 'package:flutter/material.dart';

class Fees extends StatelessWidget {
  const Fees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Fees'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 123, 17, 17),
          actions: const [Icon(Icons.file_download)]),
      body: const SafeArea(
        child: Center(
          child: Text('Fees page'),
        ),
      ),
    );
  }
}
