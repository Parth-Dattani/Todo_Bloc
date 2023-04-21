import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppTheme {

  static Color lightBackgroundColor = Colors.white;
  static Color lightPrimaryColor = Colors.white;
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = Colors.grey;

  static Color darkBackgroundColor = Colors.black;
  static Color darkPrimaryColor = Colors.black;
  static Color darkAccentColor = Colors.blueGrey.shade700;
  static Color darkParticlesColor = Colors.blueAccent;

  const AppTheme._();
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    accentColor: lightAccentColor,
    backgroundColor: lightBackgroundColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.teal,
        titleTextStyle: TextStyle(color: Colors.black)
    ),

    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    accentColor: darkAccentColor,
    backgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        titleTextStyle: TextStyle(color: Colors.white)
    )
  );

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      statusBarIconBrightness:  themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light ? lightBackgroundColor : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}