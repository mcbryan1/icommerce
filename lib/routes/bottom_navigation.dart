import 'package:flutter/material.dart';
import 'package:icommerce/constants.dart';
import 'package:icommerce/screens/major/home/home.dart';
import 'package:icommerce/screens/major/profile/profile.dart';
import 'package:icommerce/screens/major/settings/settings.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: kSecondaryColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/home-outlined.png'),
              ),
              activeIcon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/home.png'),
              ),
              label: 'Home',
              tooltip: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/user.png'),
              ),
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/user-outlined.png'),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              activeIcon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/settings.png'),
              ),
              icon: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset('assets/images/settings-outlined.png'),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
