import 'package:flutter/material.dart';
import 'package:icommerce/routes/bottom_navigation.dart';
import 'package:icommerce/widgets/button/my_button.dart';
import 'package:icommerce/widgets/text/my_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
            // add dark overlay
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcATop),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyText(
              text: 'iCommerce',
              textAlign: TextAlign.center,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 30),
            const MyText(
                color: Colors.white,
                fontSize: 16,
                text:
                    'iCommerce is a one-stop shop for all your Apple products. We have a wide range of products to choose from. You can also buy accessories like chargers, headphones, cases, etc.',
                textAlign: TextAlign.center),
            const SizedBox(height: 30),
            SizedBox(
                width: double.infinity,
                child: MyButton(
                    text: 'Continue With Google',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavigation()));
                    })),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
