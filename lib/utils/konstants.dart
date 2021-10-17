import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ThemeData appThemeData(Brightness brightness) {
  return ThemeData(
      primaryColor: primaryRedColor,
      backgroundColor: brightness == Brightness.dark
          ? darkBackgroundColor
          : lightBackgroundColor,
      appBarTheme: AppBarTheme(
          elevation: 2,
          backgroundColor: primaryRedColor,
          shadowColor: secondaryRedColor),
      colorScheme: ColorScheme(
          primary: primaryRedColor,
          primaryVariant: primaryRedColor,
          secondary: secondaryRedColor,
          secondaryVariant: secondaryRedColor,
          surface: brightness == Brightness.dark
              ? darkBackgroundColor
              : lightBackgroundColor,
          background: brightness == Brightness.dark
              ? darkBackgroundColor
              : lightBackgroundColor,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: brightness),
      brightness: brightness,
      textTheme: TextTheme(
        bodyText1: montserratStyle(
            size: 18, brightness: brightness, weight: FontWeight.w500),
        bodyText2: montserratStyle(
            size: 14, brightness: brightness, weight: FontWeight.w400),
        button: montserratStyle(
            size: 16, brightness: brightness, weight: FontWeight.w600),
        headline1: robotoStyle(
            size: 48, brightness: brightness, weight: FontWeight.bold),
        headline2: robotoStyle(
            size: 40, brightness: brightness, weight: FontWeight.bold),
        headline3: robotoStyle(
            size: 30, brightness: brightness, weight: FontWeight.w700),
        headline4: robotoStyle(
            size: 24, brightness: brightness, weight: FontWeight.w600),
        headline5: robotoStyle(
            size: 18, brightness: brightness, weight: FontWeight.w500),
        headline6: robotoStyle(
            size: 16, brightness: brightness, weight: FontWeight.w400),
        subtitle1: montserratStyle(
            size: 14, brightness: brightness, weight: FontWeight.w500),
        subtitle2: montserratStyle(
            size: 12, brightness: brightness, weight: FontWeight.w400),
        overline: montserratStyle(
                size: 10, brightness: brightness, weight: FontWeight.w400)
            .copyWith(
          color: brightness == Brightness.dark
              ? Colors.white.withOpacity(0.5)
              : Colors.black.withOpacity(0.5),
        ),
      ));
}

TextStyle montserratStyle(
    {required double size,
    required Brightness brightness,
    required FontWeight weight}) {
  return TextStyle(
    fontFamily: weight == FontWeight.bold ? 'MontserratBold' : 'Montserrat',
    fontSize: size,
    color: brightness == Brightness.dark ? Colors.white : Colors.black,
    fontWeight: weight,
  );
}

TextStyle robotoStyle(
    {required double size,
    required Brightness brightness,
    required FontWeight weight}) {
  return TextStyle(
    fontFamily: 'RobotoReg',
    fontSize: size,
    color: brightness == Brightness.dark ? Colors.white : Colors.black,
    fontWeight: weight,
  );
}

Color primaryRedColor = Color(0xFFE50914);
Color secondaryRedColor = Color(0xFFB81D24);
Color darkBackgroundColor = Color(0xFF221F1F);
Color lightBackgroundColor = Color(0xFFF5F5F1);
const Color pureGrey = Color(0xFF2B2A29);
const Color backgroundBlack = Color(0xFF101010);

final textFieldCommonDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: pureGrey, width: 2.0),
  ),
  filled: true,
  hintStyle: TextStyle(color: Colors.grey[600]),
  fillColor: darkBackgroundColor,
);
