import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/navigation/bottomNavigation/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState (){
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      (){
        Navigator.pushReplacement(
          context, 
        MaterialPageRoute(
          builder: (context) => const MainPage()
        ));
      }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: 
          Text('PeakLog', style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}