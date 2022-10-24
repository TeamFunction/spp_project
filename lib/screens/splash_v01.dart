import 'package:flutter/material.dart';
import 'dart:async';

import 'package:project_spp/screens/pages/home.dart';
import 'package:project_spp/screens/intro.dart';
// import 'package:projectspp/home.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    super.initState();
    splashscreenStart();
    _controller.forward();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
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
                      child: Container(
                        width: 200,
                        height: 100,
                        child: Image.asset(
                          "assets/images/smk.png",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ))),
            SizedBox(
              height: 24.0,
            ),
            ScaleTransition(
              scale: Tween<double>(begin: 0.8, end: 1.0).animate(_controller),
              child: Text(
                "SPP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
