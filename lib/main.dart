import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/Screens/pages/adventures_page.dart';
import 'package:peaklog/Screens/pages/splash_screen.dart';
import 'package:peaklog/details_screen/menu_page.dart';

void main() {
  runApp(const Peaklog());
}

class Peaklog extends StatelessWidget {
  const Peaklog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/menu': (context) => const MenuPage(),
        '/AdveturePage': (context) => const AdventuresPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Peaklog',
      theme: ThemeData(
        canvasColor: primary, 
        scaffoldBackgroundColor: primary,
         colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          surface: primary,
  ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          titleTextStyle: const TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      home: const SplashScreen(), 
    );
  }
}

