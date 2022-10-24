import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/screens/login.dart';

class toLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: sheight,
        width: swidth,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                bgTV,
                width: swidth,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  bgBV,
                  width: swidth,
                ),
              ),
            ),
            Center(
              child: Container(
                height: sheight / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            'SMKN 1 KOTA PASURUAN',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: (swidth / 13),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      height: (sheight / 4),
                      child: Image.asset(imgSMK),
                    )),
                    Container(
                      // padding: EdgeInsets.only(top: 50),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color.fromARGB(255, 54, 109, 190),
                                      Color.fromARGB(255, 75, 140, 204),
                                      Color.fromARGB(255, 45, 150, 236),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                shadowColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: (swidth / 10),
                                    vertical: (sheight / 45)),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: (swidth / 120)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
