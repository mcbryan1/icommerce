import 'package:flutter/material.dart';
import 'package:icommerce/widgets/text/my_text.dart';

class TopProfile extends StatefulWidget {
  const TopProfile({Key? key}) : super(key: key);

  @override
  State<TopProfile> createState() => _TopProfileState();
}

class _TopProfileState extends State<TopProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        SizedBox(height: 50),
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/images/person.jpg'),
        ),
        SizedBox(height: 20),
        MyText(text: 'John Doe', fontSize: 22, fontWeight: FontWeight.w600),
        SizedBox(height: 10),
        MyText(text: 'solomonmcbryan@gmail.com', fontSize: 17),
      ]),
    );
  }
}
