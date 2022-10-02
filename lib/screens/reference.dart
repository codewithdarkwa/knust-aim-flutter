import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home.dart';

class Reference extends StatefulWidget {
  const Reference({Key? key}) : super(key: key);

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 3,
                  color: const Color.fromARGB(255, 123, 17, 17),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  child: SizedBox(
                    width: 150,
                    child: Image.asset('images/aim.png'),
                  ),
                ),
                const Positioned(
                  top: 150,
                  left: 150,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('images/John.png'),
                      radius: 60),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username',
                      alignLabelWithHint: true,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      alignLabelWithHint: true,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 123, 17, 17),
                padding: const EdgeInsets.symmetric(horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text('Verify'),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/results.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/notification.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/fees.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/registration.png'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/slip.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
