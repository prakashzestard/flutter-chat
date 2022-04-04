import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "/";

  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      upperBound: 1,
    );
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    child: Image.asset('images/logo.png'),
                    height: (60),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 40),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Button(
                color: Colors.lightBlue,
                pressEvent: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                text: 'Login',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Button(
                  color: Colors.blueAccent,
                  text: 'Register',
                  pressEvent: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
