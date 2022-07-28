import 'package:eshop/ui/screens/constants/constants.dart';
import 'package:eshop/ui/screens/global_widgets/already_account.dart';
import 'package:eshop/ui/screens/global_widgets/global_widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            userNameField(),
            const SizedBox(
              height: 20,
            ),
            phoneNumberField(),
            const SizedBox(
              height: 20,
            ),
            eMailField(),
            const SizedBox(
              height: 20,
            ),
            passwordField(),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(press: () {}, title: "Login"),
            const SizedBox(
              height: 20,
            ),
            AlreadyHaveAnAccount(
              text1: 'Already have an account?',
              text2: ' Login',
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  userNameField() => TextField(
        decoration: InputDecoration(
            hintText: 'Enter your Name',
            filled: true,
            fillColor: kFillColor,
            suffixIcon: const Icon(Icons.key)),
      );
  phoneNumberField() => TextField(
        decoration: InputDecoration(
            hintText: 'Enter your Phone Number',
            filled: true,
            fillColor: kFillColor,
            suffixIcon: const Icon(Icons.key)),
      );
  eMailField() => TextField(
        decoration: InputDecoration(
          hintText: 'Enter your Email',
          filled: true,
          fillColor: kFillColor,
        ),
      );

  passwordField() => TextField(
        decoration: InputDecoration(
            hintText: 'Enter your Password',
            filled: true,
            fillColor: kFillColor,
            suffixIcon: const Icon(Icons.key)),
      );
}
