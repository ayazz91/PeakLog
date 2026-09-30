import 'package:flutter/material.dart';
import 'package:peaklog/ColorsTheme/AppColors/colors.dart';
import 'package:peaklog/Screens/pages/adventures_page.dart';
import 'package:peaklog/Screens/pages/home_page.dart';
import 'package:peaklog/Screens/pages/plans_page.dart';
import 'package:peaklog/Screens/pages/profile_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const MyHomePage(),
    const AdventuresPage(),
    const PlansPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,

    backgroundColor: primary,

    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white38,

    selectedFontSize: 12,
    unselectedFontSize: 12,

    elevation: 0,

        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;  
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp),
            label: 'Adventure',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste_outlined),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}