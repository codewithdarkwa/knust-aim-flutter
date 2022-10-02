import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Profile page'),
        ),
      ),
    );
  }
}
