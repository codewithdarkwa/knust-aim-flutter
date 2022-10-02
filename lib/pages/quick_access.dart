import 'package:flutter/material.dart';
import 'package:flutter_application_3/drawer_pages/course_material.dart';
import 'package:flutter_application_3/drawer_pages/fees.dart';
import 'package:flutter_application_3/drawer_pages/notification.dart';
import 'package:flutter_application_3/drawer_pages/profile.dart';
import 'package:flutter_application_3/drawer_pages/registration.dart';
import 'package:flutter_application_3/drawer_pages/result.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'Quick Access',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          children: const [
            CustomAvatar(
              name: "Results",
              page: Result(),
              image: AssetImage('images/results.png'),
            ),
            CustomAvatar(
              name: "Profile",
              page: Profile(),
              image: AssetImage('images/profile.png'),
            ),
            CustomAvatar(
              name: "Fees",
              page: Fees(),
              image: AssetImage('images/fees.png'),
            ),
            CustomAvatar(
              name: "Notification",
              page: Notifications(),
              image: AssetImage('images/notification.png'),
            ),
            CustomAvatar(
              name: "Resgistration",
              page: Registration(),
              image: AssetImage('images/registration.png'),
            ),
            CustomAvatar(
              name: " Materials",
              page: CourseMaterial(),
              image: AssetImage('images/slip.png'),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    Key? key,
    this.name,
    this.page,
    this.image,
  }) : super(key: key);
  final name;
  final page;
  final image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: CircleAvatar(
            backgroundImage: image,
          ),
        ),
        Text(name),
      ],
    );
  }
}
