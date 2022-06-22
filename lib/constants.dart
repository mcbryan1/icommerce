import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFf75435);
const kPrimaryLightColor = Color.fromARGB(255, 248, 224, 220);
const kPrimaryLighterColor = Color.fromARGB(255, 255, 249, 247);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFf75536),
  ],
);
const kTextColor = Color(0xFF0d1333);
const kTextLightColor = Color(0xFF718093);
const kBackgroundLightColor = Color(0xFFF5F5F5);

const kDefaultPadding = 20.0;

// Backend Constants
const authBaseUrl = 'https://id.shopa.life';
const apiBaseUrl = 'https://api.stage.shopa.life';
const clientId = '0c10ea02-35e4-4439-bc75-62a78ac91e68';
