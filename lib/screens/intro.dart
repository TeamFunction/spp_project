import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project_spp/screens/home.dart';
// import 'package:projectspp/home.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreen createState() => _IntroScreen();
}

class _IntroScreen extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              child: Image.asset(
                "assets/images/smk.png",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "SPP",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
