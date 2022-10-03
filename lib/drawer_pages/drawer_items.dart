import 'package:flutter/material.dart';
import 'package:flutter_application_3/drawer_pages/course_material.dart';
import 'package:flutter_application_3/drawer_pages/fees.dart';
import 'package:flutter_application_3/drawer_pages/help.dart';
import 'package:flutter_application_3/drawer_pages/lecturer_assessment.dart';
import 'package:flutter_application_3/drawer_pages/notification.dart';
import 'package:flutter_application_3/drawer_pages/profile.dart';
import 'package:flutter_application_3/drawer_pages/registration.dart';
import 'package:flutter_application_3/drawer_pages/result.dart';
import 'package:flutter_application_3/drawer_pages/settings.dart';
import 'package:flutter_application_3/pages/home.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomListTile(
          title: "Home",
          icon: Icons.home,
          page: Home(),
        ),
        CustomListTile(
          title: "Profile",
          icon: Icons.person,
          page: Profile(),
        ),
        CustomListTile(
          title: "Registration",
          icon: Icons.receipt,
          page: Registration(),
        ),
        CustomListTile(
          title: "Results",
          icon: Icons.check_box_sharp,
          page: Result(),
        ),
        CustomListTile(
          title: "Fees",
          icon: Icons.payment,
          page: Fees(),
        ),
        CustomListTile(
          title: "Notification",
          icon: Icons.notifications,
          page: Notifications(),
        ),
        CustomListTile(
          title: "Course Materials",
          icon: Icons.description,
          page: CourseMaterial(),
        ),
        CustomListTile(
          title: "Lecturer Assessment",
          icon: Icons.person,
          page: LecturerAssessment(),
        ),
        Divider(),
        CustomListTile(
          title: "Settings",
          icon: Icons.settings,
          page: Setting(),
        ),
        CustomListTile(
          title: "Profile",
          icon: Icons.help,
          page: Help(),
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key, required this.title, required this.icon, required this.page})
      : super(key: key);

  final title;
  final page;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      minLeadingWidth: 5,
    );
  }
}
