import 'package:flash_chat_flutter/components/button.dart';
import 'package:flash_chat_flutter/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "/register";

  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter your email idssss",
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: "Enter your password",
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Button(
                  text: 'Register',
                  color: Colors.blueAccent,
                  pressEvent: () {
                    print(password);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
