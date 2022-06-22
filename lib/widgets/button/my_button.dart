import 'package:flutter/material.dart';
import 'package:icommerce/constants.dart';
import 'package:icommerce/widgets/text/my_text.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final Color color;
  final InteractiveInkFeatureFactory? factory;

  const MyButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.height = 60,
      this.factory,
      this.color = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          splashFactory: factory,
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: MyText(
          text: text,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
