import 'package:eshop/ui/screens/constants/constants.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();

  forgetPassword() async {
    setState(() {
      isLoading = true;
    });
    await authController.forgetPassword(email: emailController.text);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eMailField(),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: forgetPassword,
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    minimumSize: const Size(double.infinity, 50)),
                child: isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : const Text('Reset Password')),
          ],
        ),
      ),
    );
  }

  eMailField() => TextField(
        controller: emailController,
        decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor: kFillColor,
            border: InputBorder.none),
      );
}
