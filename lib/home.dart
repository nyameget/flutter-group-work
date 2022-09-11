// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/Screens/ActivityPage.dart';
import 'package:personal_app/Screens/Alarm.dart';
import 'package:personal_app/Screens/Home.dart';
import 'package:personal_app/Screens/Profile.dart';
import 'package:personal_app/Screens/Settings.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int index = 2;

  final screens = [
    Alarm(),
    ActivityPage(),
    Home(),
    Settings(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: Colors.deepPurple.shade200,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.deepPurple.shade200,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(
            milliseconds: 600,
          ),
          items: <Widget>[
            Icon(
              color: Colors.white,
              Icons.alarm,
              size: 20,
            ),
            Icon(
              color: Colors.white,
              Icons.local_activity,
              size: 20,
            ),
            Icon(
              color: Colors.white,
              Icons.home,
              size: 20,
            ),
            Icon(
              color: Colors.white,
              Icons.settings,
              size: 20,
            ),
            Icon(
              color: Colors.white,
              Icons.person,
              size: 20,
            ),
          ],
        ),
        body: screens[index],
      ),
    );
  }
}
