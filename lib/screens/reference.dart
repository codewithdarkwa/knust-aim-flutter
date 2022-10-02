import 'package:flutter/material.dart';

class Reference extends StatelessWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back to login'),
      )),
    );
  }
}
