import 'package:flutter/material.dart';

class AppTheme {
  //colors
  static Color backGroundColor = Color.fromARGB(255, 241, 206, 187);
  static Color groundColor = Color(0xFFF8B797);
  static Color iconBoxColor = Color(0xFFFF8A50);
  static Color footerColor = Color(0xFFFC8019);
  static Color iconTextColor = Colors.white;
  static Color headingColor = Colors.black;

  //styles
  static TextStyle iconText = TextStyle(
    fontSize: 40,
    color: iconTextColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heading = TextStyle(
    fontSize: 24,
    color: headingColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle footer = TextStyle(
    fontSize: 13,
    color: footerColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle eventText = TextStyle(
    fontSize: 20,
    color: headingColor,
    fontWeight: FontWeight.w500,
  );
}
