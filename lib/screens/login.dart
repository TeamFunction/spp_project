import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_spp/screens/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(
              "assets/images/vector_1.png",
              fit: BoxFit.scaleDown,
            ),
          ),
          Column(
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
              SizedBox(
                height: (sheight / 10),
              ),
              Center(
                  child: Container(
                height: (sheight / 4),
                child: Image.asset("assets/images/smk.png"),
              )),
              SizedBox(
                height: (sheight / 14),
              ),
              Container(
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
                              horizontal: (swidth / 9),
                              vertical: (sheight / 35)),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home(title: 'Flutter Demo Home Page')),
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
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/vector_2.png",
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
