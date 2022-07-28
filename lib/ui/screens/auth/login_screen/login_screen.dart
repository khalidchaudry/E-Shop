import 'package:eshop/ui/screens/constants/constants.dart';
import 'package:eshop/ui/screens/global_widgets/already_account.dart';
import 'package:eshop/ui/screens/global_widgets/global_widgets.dart';
import 'package:eshop/ui/screens/screens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            eMailField(),
            const SizedBox(
              height: 20,
            ),
            passwordField(),
            TextButtonWidget(
              press: () => Navigator.pushNamed(context, '/forget_password'),
              title: 'Forget Password',
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(press: () {}, title: "Login"),
            const SizedBox(
              height: 10,
            ),
            AlreadyHaveAnAccount(
              text1: 'Need an account?',
              text2: ' SignUp',
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen())),
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
            border: InputBorder.none),
      );

  passwordField() => TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: kFillColor,
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(isObsecure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
            )),
      );
}
