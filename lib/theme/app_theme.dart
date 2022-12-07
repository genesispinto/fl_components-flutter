import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary =  Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        // Text Button Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)
        ),
        //Floating Action Button
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),
        //Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom( 
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation: 0
            )
          )
      );
   static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //color primario
        primaryColor: Colors.indigo,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        scaffoldBackgroundColor: Colors.black
      );
}