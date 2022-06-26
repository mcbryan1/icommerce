import 'package:flutter/material.dart';
import 'package:icommerce/screens/welcome.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1000,
          minWidth: 430,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(430, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET)
          ]),
      debugShowCheckedModeBanner: false,
      title: 'iCommerce',
      home: const WelcomeScreen(),
    );
  }
}
