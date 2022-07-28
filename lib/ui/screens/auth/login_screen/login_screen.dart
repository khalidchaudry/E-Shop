import 'package:eshop/ui/screens/constants/constants.dart';
import 'package:eshop/ui/screens/global_widgets/already_account.dart';
import 'package:eshop/ui/screens/global_widgets/global_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            eMailField(),
            const SizedBox(
              height: 20,
            ),
            passwordField(),
            TextButtonWidget(
                press: () => Navigator.pushNamed(context, '/forget_password'),
                title: 'Forget Password'),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(press: () {}, title: "Login"),
            const SizedBox(
              height: 20,
            ),
            AlreadyHaveAnAccount(
              text1: 'Need an account?',
              text2: ' SignUp',
              press: () => Navigator.pushNamed(context, '/signup_screen'),
            ),
          ],
        ),
      ),
    );
  }

  eMailField() => TextField(
        decoration: InputDecoration(
          hintText: 'Email',
          filled: true,
          fillColor: kFillColor,
        ),
      );

  passwordField() => TextField(
        obscureText: isClicked,
        onTap: () {
          setState(() {
            isClicked != isClicked;
          });
        },
        decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: kFillColor,
            suffixIcon: const Icon(Icons.key)),
      );
}
