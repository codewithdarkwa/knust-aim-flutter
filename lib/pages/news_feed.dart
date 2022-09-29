import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'News ',
          style: TextStyle(fontSize: 17),
        ),
        Divider(),
      ],
    );
  }
}
