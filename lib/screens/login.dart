import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/reference.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  height: screenHeight / 3.5,
                  color: const Color.fromARGB(255, 123, 17, 17),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  child: SizedBox(
                    child: Image.asset('images/aim.png'),
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.35,
                  left: 150,
                  child: const CircleAvatar(
                      backgroundImage: AssetImage('images/avatar.jpg'),
                      radius: 60),
                ),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 70, bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your student ID number',
                  alignLabelWithHint: true,
                ),
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
                    MaterialPageRoute(builder: (context) => const Reference()));
              },
              child: const Text('Next'),
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
