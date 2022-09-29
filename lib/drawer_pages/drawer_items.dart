import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home, color: Colors.black),
          title: const Text('Home'),
          onTap: () {},
          minLeadingWidth: 10,
        ),
        ListTile(
          leading: const Icon(Icons.person, color: Colors.black),
          title: const Text('Profile'),
          onTap: () {},
          minLeadingWidth: 10,
          minVerticalPadding: 10,
        ),
        ListTile(
          leading: const Icon(Icons.receipt, color: Colors.black),
          title: const Text('Registration'),
          onTap: () {},
          minLeadingWidth: 10,
        ),
        ListTile(
          leading: const Icon(Icons.check_box_sharp, color: Colors.black),
          title: const Text('Results'),
          onTap: () {},
          minLeadingWidth: 10,
        ),
      ],
    );
  }
}
