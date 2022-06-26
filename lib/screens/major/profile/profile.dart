import 'package:flutter/material.dart';
import 'package:icommerce/constants.dart';
import 'package:icommerce/widgets/appbar/my_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: MyAppbar(
        title: 'Profile',
        fontWeight: FontWeight.bold,
        fontSize: 22,
        showBackButton: false,
        showCartButton: false,
      ),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
