import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_spp/conf.dart';
import 'dart:async';

import 'package:project_spp/screens/pages/home.dart';
import 'package:project_spp/screens/intro.dart';
// import 'package:projectspp/home.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    _controller2 = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    super.initState();
    splashscreenStart();
    _controller.forward();
    _controller2.forward();
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
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: FadeTransition(
                opacity:
                    Tween<double>(begin: 0.0, end: 1.0).animate(_controller),
                child: SvgPicture.asset(
                  bgTV,
                  width: swidth,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                    child: ScaleTransition(
                        scale: Tween<double>(begin: 0.5, end: 1.0)
                            .animate(_controller2),
                        child: FadeTransition(
                          opacity: Tween<double>(begin: 0.0, end: 1.0)
                              .animate(_controller2),
                          child: Container(
                            width: 200,
                            height: 100,
                            child: Image.asset(
                              imgSMK,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ))),
                SizedBox(
                  height: (sheight / 36),
                ),
                ScaleTransition(
                  scale:
                      Tween<double>(begin: 0.8, end: 1.0).animate(_controller2),
                  child: Text(
                    "SPP DIGITAL",
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: (swidth / 15),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              child: FadeTransition(
                opacity:
                    Tween<double>(begin: 0.0, end: 1.0).animate(_controller),
                child: SvgPicture.asset(
                  bgBV,
                  width: swidth,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
