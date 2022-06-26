import 'package:flutter/material.dart';
import 'package:icommerce/constants.dart';
import 'package:icommerce/widgets/appbar/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: MyAppbar(
        title: 'iCommerce',
        fontWeight: FontWeight.bold,
        fontSize: 22,
        showBackButton: false,
        showCartButton: true,
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
