import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfinance/pages/auth/login.dart';
import 'package:myfinance/pages/auth/register.dart';
import 'package:myfinance/pages/home.dart';
import 'package:myfinance/pages/intro.dart';

void main() {
  // fullScreen mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

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
      secondaryHeaderColor: const Color(0xFF73BBA3),
      highlightColor: const Color(0xFFEAFFD0),
      fontFamily: 'Roboto',
      primaryTextTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 21, color: Colors.white),
        titleSmall: TextStyle(
            fontSize: 17, color: Colors.white, fontWeight: FontWeight.normal),
        displayLarge: TextStyle(fontSize: 20, color: Colors.black87),
        displayMedium: TextStyle(fontSize: 17, color: Colors.black87),
        displaySmall: TextStyle(fontSize: 15, color: Colors.black87),
      ),
    );
  }
}
