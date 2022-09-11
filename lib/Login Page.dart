// ignore_for_file: file_names, unused_import, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(bottom: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Login To Continue',
              style: TextStyle(fontSize: 20, fontFamily: 'Rubik'),
              textAlign: TextAlign.center,
            ),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
    );
  }
}
