import 'package:flutter/material.dart';

class AppTheme {
  //colors
  static Color backGroundColor = Color.fromARGB(255, 241, 206, 187);
  static Color groundColor = Color(0xFFF8B797);
  static Color iconBoxColor = Color(0xFFFF8A50);
  static Color footerColor = Color(0xFFFC8019);
  static Color iconTextColor = Colors.white;
  static Color headingColor = Color(0xff282828);

  //styles
  static TextStyle iconText = TextStyle(
    fontSize: 40,
    color: iconTextColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle appname = TextStyle(
    fontSize: 20,
    color: headingColor,
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
    fontSize: 14,
    color: headingColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle eventFooter = TextStyle(
    fontSize: 10,
    color: Color(0xff808080),
    fontWeight: FontWeight.w300,
  );

  static TextStyle premiumoffer = TextStyle(
    fontSize: 15,
    color: headingColor,
    fontWeight: FontWeight.w300,
  );

  static TextStyle premiumhighlights = TextStyle(
    fontSize: 20,
    color: Color(0xff8B39FF),
    fontWeight: FontWeight.w700,

  );
}
