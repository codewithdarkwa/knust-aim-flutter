import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 170,
        child: Image.asset(
          'images/image.jpg',
          fit: BoxFit.cover,
        ));
  }
}
