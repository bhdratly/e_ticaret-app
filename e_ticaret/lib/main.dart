import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HemenSepet',
      theme: ThemeData(
        // Light Mode
        brightness: Brightness.light,
        primaryColor: Color(0xFF4B0D1B),
        scaffoldBackgroundColor: Color(0xFFFAFAF5),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF4B0D1B),
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        // Dark Mode
        brightness: Brightness.dark,
        primaryColor: Color(0xFF4B0D1B),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF4B0D1B),
          foregroundColor: Colors.white,
        ),
        cardColor: Color(0xFF1E1E1E),
      ),
      themeMode: ThemeMode.system,
      home: LoginPage(),
    );
  }
}
