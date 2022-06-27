import 'package:flutter/material.dart';
import 'package:icommerce/constants.dart';
import 'package:icommerce/screens/major/profile/components/bottom_profile.dart';
import 'package:icommerce/screens/major/profile/components/top_profile.dart';
import 'package:icommerce/widgets/appbar/my_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: const MyAppbar(
          title: 'Profile',
          fontWeight: FontWeight.bold,
          fontSize: 22,
          showBackButton: false,
          showCartButton: false,
        ),
        body: Column(
          children: [
            TopProfile(),
            const SizedBox(height: 50),
            const Flexible(child: BottomProfile()),
          ],
        ));
  }
}
