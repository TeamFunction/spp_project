import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project_spp/home.dart';
// import 'package:projectspp/home.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    super.initState();
    splashscreenStart();
    _controller.forward();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Home(title: 'Flutter Demo Home Page')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: ScaleTransition(
                    scale: Tween<double>(begin: 0.5, end: 1.0)
                        .animate(_controller),
                    child: FadeTransition(
                        opacity: Tween<double>(begin: 0.0, end: 1.0)
                            .animate(_controller),
                        child: Icon(Icons.school,
                            size: 200, color: Colors.white)))),
            SizedBox(
              height: 24.0,
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
