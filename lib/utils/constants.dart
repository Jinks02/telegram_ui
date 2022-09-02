import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color white = Color(0xffffffff);
Color black = Color(0xff000000);
Color grey = Color(0xff7a887d);
Color blue = Color(0xff529eba);
Color lightAppBar = Color(0xff327188);
Color darkBlue1 = Color(0xff173a47);
Color darkAppBar = Color(0xff244e5d);
Color darkBlue = Color(0xff063EF3);

IconData group = FontAwesomeIcons.userGroup;
IconData person = FontAwesomeIcons.solidUser;
IconData call = FontAwesomeIcons.phone;
IconData nearby = FontAwesomeIcons.streetView;
IconData saved = FontAwesomeIcons.solidBookmark;
IconData addPeople = FontAwesomeIcons.userPlus;
IconData question = FontAwesomeIcons.circleQuestion;
IconData pencil = FontAwesomeIcons.pencil;
IconData search = FontAwesomeIcons.magnifyingGlass;
IconData settings = FontAwesomeIcons.gear;
IconData list = FontAwesomeIcons.list;
IconData sun = FontAwesomeIcons.sun;
IconData moon = FontAwesomeIcons.moon;

TextStyle heading = TextStyle(
  color: white,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);
TextStyle subHeading = TextStyle(color: white, fontSize: 16);

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      backgroundColor: lightAppBar,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: black,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      headline2: TextStyle(color: black, fontSize: 14),
      headline3: TextStyle(fontSize: 13),
      headline4: TextStyle(fontSize: 11),
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: blue));

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkBlue1,
    appBarTheme: AppBarTheme(
      backgroundColor: darkAppBar,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: white,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      headline2: TextStyle(color: white, fontSize: 14),
      headline3: TextStyle(fontSize: 13, color: grey),
      headline4: TextStyle(fontSize: 11, color: white),
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Color(0xff0729EE)));
