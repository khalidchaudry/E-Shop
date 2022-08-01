import 'package:eshop/ui/screens/assets_path/assets_path.dart';
import 'package:eshop/ui/screens/auth/login_screen/login_screen.dart';
import 'package:eshop/ui/screens/cart_screen/cart_screen.dart';
import 'package:eshop/ui/screens/profile_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Username'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(AssetsPath.mobile2),
              const SizedBox(
                height: 10,
              ),
              ClickAbleListTileWidget(
                  leading: Icons.shopping_cart,
                  title: 'Cart',
                  trailing: Icons.arrow_forward_ios_outlined,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()))),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'User Data',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTileWidget(
                  iconData: Icons.person,
                  title: 'Username',
                  subTitle: 'Khalid Ali'),
              const ListTileWidget(
                  iconData: Icons.email,
                  title: 'Email',
                  subTitle: 'khalidchaudry130@gmail.com'),
              const ListTileWidget(
                  iconData: Icons.phone,
                  title: 'Phone Number',
                  subTitle: '03087947982'),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Orders',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ClickAbleListTileWidget(
                  leading: Icons.shopping_bag,
                  title: 'My Orders',
                  trailing: Icons.arrow_forward_ios_outlined,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()))),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ClickAbleListTileWidget(
                  leading: Icons.person,
                  title: 'Logout',
                  trailing: Icons.logout,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()))),
            ],
          ),
        ));
  }
}
