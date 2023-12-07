import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontFamily: 'SfProDisplay', fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(
        fontFamily: 'SfProText',
        fontSize: 16,
        letterSpacing: 0.4,
        fontWeight: FontWeight.w500,
        color: Colors.black),
    displayMedium: TextStyle(
        fontFamily: 'SfProText',
        fontSize: 20,
        letterSpacing: -0.7,
        fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        fontFamily: 'SfProText',
        fontSize: 14,
        letterSpacing: -0.42,
        fontWeight: FontWeight.w500,
        color: Color(0xff737373)),
    bodySmall: TextStyle(
        fontFamily: 'SfProText',
        fontSize: 14,
        letterSpacing: -0.42,
        fontWeight: FontWeight.w500),
  ),
  primaryColor: const Color(0xFF08A652),
  secondaryHeaderColor: const Color(0xFF068441),
  hoverColor: const Color(0xFFd4fadf),
  splashColor: const Color(0xFF068441),
  disabledColor: const Color(0xff737373),
  unselectedWidgetColor: const Color(0xffebebeb),
);
