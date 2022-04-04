import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

class Button extends StatelessWidget {
  final Color color;
  Function()? pressEvent;
  String text;
  Button(
      {Key? key,
      this.color = Colors.black,
      this.pressEvent,
      required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: pressEvent,
        minWidth: 200.0,
        height: 42.0,
        child: Text(text),
      ),
    );
  }
}
