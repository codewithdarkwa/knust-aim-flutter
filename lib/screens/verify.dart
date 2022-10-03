import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final _formKey = GlobalKey<FormState>();

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
                  top: screenWidth * 0.4,
                  left: 150,
                  child: const CircleAvatar(
                      backgroundImage: AssetImage('images/John.png'),
                      radius: 60),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 25,
              ),
              child: VerifyForm(formKey: _formKey),
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

class VerifyForm extends StatelessWidget {
  const VerifyForm({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Required field missing';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username',
              alignLabelWithHint: true,
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Required field missing';
              }
              return null;
            },
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Password',
              alignLabelWithHint: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 123, 17, 17),
                padding: const EdgeInsets.symmetric(horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                }
              },
              child: const Text('Verify'),
            ),
          ),
        ],
      ),
    );
  }
}
