import 'package:flutter/material.dart';
import 'package:myfinance/pages/auth/login.dart';
import 'package:myfinance/pages/auth/register.dart';
import 'package:myfinance/pages/home.dart';
import 'package:myfinance/pages/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: settingTheme(),
      initialRoute: '/', // URL Pertama kali di kunjungi saat buka aplikasi
      routes: {
        '/': (context) => const Intro(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
      },
    );
  }

  ThemeData settingTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xFFF38181),
      secondaryHeaderColor: const Color(0xFF95E1D3),
      highlightColor: const Color(0xFFEAFFD0),
      fontFamily: 'Roboto',
      primaryTextTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, color: Colors.black87, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 21, color: Colors.black87),
        titleSmall: TextStyle(
            fontSize: 18, color: Colors.black87, fontWeight: FontWeight.normal),
        displayMedium: TextStyle(fontSize: 21, color: Colors.black87),
        displaySmall: TextStyle(fontSize: 18, color: Colors.black87),
      ),
    );
  }
}
