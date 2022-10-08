import 'package:flutter/material.dart';

class AppConstant {
  /// hero tags
  static const splashIconHero = "splash";

  /// strings
  static const appName = "Prosonic";
  static const placeHolder =
      """Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
      Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
      when an unknown printer took a galley of type and scrambled it to make a type 
      specimen book.""";

  /// colors
  static const red = Color.fromARGB(255, 229, 0, 33);
  static const gray = Color.fromARGB(255, 24, 24, 24);
  static const black = Color.fromARGB(255, 13, 13, 13);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const blue = Color.fromARGB(255, 15, 101, 242);
  static const red2 = Color(0xffdd1f5f);
  static const blue2 = Color(0xaa12d8d3);

  static const primaryColor = red;
  static const appbarColor = Colors.transparent;
  static const scaffoldBackgroundColor = black;
  static const appbarIconColor = white;
  static const iconColor = white;
  static const textThemeColor = white;
  static const buttonTextThemeColor = black;

  /// app theme
  static getTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: appbarColor,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: appbarIconColor,
          ),
        ),
        iconTheme: const IconThemeData(
          color: iconColor,
        ),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.normal,
        ),
        textTheme: Theme.of(context)
            .textTheme
            .copyWith(button: const TextStyle(color: buttonTextThemeColor))
            .apply(
              bodyColor: textThemeColor,
              displayColor: textThemeColor,
            ),
      );
}
