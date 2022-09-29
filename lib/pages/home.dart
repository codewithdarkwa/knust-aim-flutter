import 'package:flutter/material.dart';
import 'package:flutter_application_3/drawer_pages/custom_drawer_header.dart';
import 'package:flutter_application_3/drawer_pages/drawer_items.dart';
import 'package:flutter_application_3/pages/contact.dart';
import 'package:flutter_application_3/pages/my_slider.dart';
import 'package:flutter_application_3/pages/news_feed.dart';
import 'package:flutter_application_3/pages/quick_access.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
        title: const Text('AIM'),
        centerTitle: true,
        actions: [
          Image.asset(
            'images/logo.png',
            scale: 5,
          ),
          const Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          MySlider(),
          QuickAccess(),
          Contact(),
          NewsFeed(),
        ],
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: const [
            CustomDrawerHeader(),
            Divider(),
            DrawerItems(),
          ],
        ),
      ),
    );
  }
}
