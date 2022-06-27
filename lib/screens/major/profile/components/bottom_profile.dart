import 'package:flutter/material.dart';
import 'package:icommerce/widgets/text/my_text.dart';

class BottomProfile extends StatefulWidget {
  const BottomProfile({Key? key}) : super(key: key);

  @override
  State<BottomProfile> createState() => _BottomProfileState();
}

class _BottomProfileState extends State<BottomProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person, color: Colors.black),
            title: MyText(
              text: 'Profile',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            subtitle: MyText(
              text: 'Edit your profile',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 16,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.black),
            title: MyText(
              text: 'Settings',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            subtitle: MyText(
              text: 'Manage your account',
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 16,
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.black),
            title: MyText(
              text: 'Logout',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            subtitle: MyText(
              text: 'Logout from your account',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 16,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
