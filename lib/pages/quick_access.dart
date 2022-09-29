import 'package:flutter/material.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
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
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/results.png'),
                  ),
                ),
                const Text('Results'),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile.png'),
                ),
                Text('Profile'),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/fees.png'),
                ),
                Text('Fees'),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/registration.png'),
                ),
                Text('Registration'),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/notification.png'),
                ),
                Text('Notification'),
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/slip.png'),
                ),
                Text('Slip'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
