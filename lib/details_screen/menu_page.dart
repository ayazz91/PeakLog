import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text('Settings'),
        iconTheme: IconThemeData(
          color: Colors.white70
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}