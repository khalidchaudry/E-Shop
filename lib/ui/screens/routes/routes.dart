import 'package:eshop/ui/screens/home_screen/widgets/details_page_widget.dart';
import 'package:flutter/cupertino.dart';

import '../screens.dart';

Map<String, Widget Function(BuildContext context)> routeName = {
  '/login_screen': (context) => const LoginScreen(),
  '/signup_screen': (context) => const SignUpScreen(),
  '/forget_password': (context) => ForgetPasswordScreen(),
  '/bottom_nav_bar': (context) => const BottomNavBar(),
  '/details_page': (context) => const DetailsPageWidget(),
};
