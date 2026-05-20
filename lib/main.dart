import 'package:flutter/material.dart';
import 'analytics.dart';
import 'status.dart';
import 'styles/app_colors.dart';
import 'styles/app_theme.dart';
import 'home.dart';
import 'calendar.dart';

void main() {
  runApp( MaterialApp(
    theme: theme,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Home(), Calendar(), Status(), Analytics()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: AppColors.background,
        selectedItemColor: AppColors.textMain,
        unselectedItemColor: AppColors.textUnselected,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 35,),
            activeIcon: Icon(Icons.home_rounded, size: 35,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined, size: 35,),
            activeIcon: Icon(Icons.calendar_month_rounded, size: 35,),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined, size: 35,),
            activeIcon: Icon(Icons.fact_check_rounded, size: 35,),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined, size: 35,),
            activeIcon: Icon(Icons.analytics_rounded, size: 35,),
            label: 'Analytics',
          ),
        ]
      )
    );
  }
}

