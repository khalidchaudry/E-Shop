import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount(
      {Key? key, required this.text1, required this.text2, required this.press})
      : super(key: key);
  final String text1;
  final String text2;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: text1,
      ),
      TextSpan(
          text: text2.toUpperCase(),
          style: const TextStyle(color: Colors.deepPurpleAccent),
          recognizer: TapGestureRecognizer()..onTap = () => press),
    ]));
  }
}
