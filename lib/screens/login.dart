import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home.dart';

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
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 3,
                  color: const Color.fromARGB(255, 123, 17, 17),
                ),
                const Positioned(
                  top: 100,
                  left: 120,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('images/John.png'),
                      radius: 60),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                decoration: const InputDecoration(
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
                    MaterialPageRoute(builder: (context) => const Home()));
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
