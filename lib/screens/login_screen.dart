import 'package:flash_chat_flutter/components/button.dart';
import 'package:flash_chat_flutter/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter email ids'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Button(
                  text: 'Login',
                  color: Colors.lightBlueAccent,
                  pressEvent: () {},
                )),
          ],
        ),
      ),
    );
  }
}
