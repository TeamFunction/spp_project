import 'package:flutter/material.dart';
import 'package:project_spp/models/intro_model.dart';
import 'dart:async';

import 'package:project_spp/screens/pages/home.dart';
import 'package:project_spp/screens/login.dart';
// import 'package:projectspp/home.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreen createState() => _IntroScreen();
}

class _IntroScreen extends State<IntroScreen> {
  int currentIndex = 0;
  late Timer _timer;
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 3000), (Timer timer) {
      if (currentIndex < 2) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      _pageController.animateToPage(currentIndex,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: 850,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 45.0, vertical: (sheight / 8)),
                  child: Container(
                    alignment: Alignment.topCenter,
                    height: (sheight >= 700) ? 500 : 400,
                    child: PageView.builder(
                        itemCount: screens.length,
                        controller: _pageController,
                        pageSnapping: true,
                        physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (int index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                screens[index].img,
                                height: (sheight / 3),
                              ),
                              Text(
                                screens[index].text,
                                style: TextStyle(
                                    fontSize: (swidth / 16),
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          );
                        }),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: (sheight / 8),
                      child: ListView.builder(
                          itemCount: screens.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                                  width: currentIndex == index ? 25 : 8.0,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: currentIndex == index
                                          ? Colors.blue.shade300
                                          : Colors.grey.shade400,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                )
                              ],
                            );
                          }),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue.shade300,
                                    Colors.blue.shade200
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0.0, 5.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              "SKIP",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
