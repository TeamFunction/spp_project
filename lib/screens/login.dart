import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_spp/screens/home.dart';

class toLogin extends StatelessWidget {
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
                            MaterialPageRoute(builder: (context) => Login()),
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

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/vector_3.png",
              fit: BoxFit.contain,
              width: (swidth / 1.5),
            )),
        Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.67),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: Offset(0, 6))
                ]),
            // color: Colors.white,
            // height: (sheight / 1.2),
            // width: (swidth / 1.2),
            margin:
                EdgeInsets.symmetric(horizontal: 50, vertical: (sheight / 4)),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "LOGIN AKUN",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: (sheight / 40)),
                    ),
                    Container(
                      height: (sheight / 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            inputFormatters: [
                              // FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              labelText: "NIS",
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              labelText: "Password",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                        child: Container(
                                            decoration: BoxDecoration(
                                      color: Color.fromRGBO(73, 122, 167, 0.64),
                                    ))),
                                    TextButton(
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 40,
                                                vertical: (sheight / 50)),
                                            textStyle: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            alignment: Alignment.center),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home(
                                                    title:
                                                        'Flutter Demo Home Page')),
                                          );
                                        },
                                        child: Text("LOGIN",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white))),
                                  ],
                                ))),
                        TextButton(
                            style: TextButton.styleFrom(
                              onSurface: Colors.transparent,
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: 40, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.underline),
                              alignment: Alignment.center,
                            ),
                            onPressed: () {},
                            child: Text("Lupa Sandi",
                                style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline))),
                      ],
                    ),
                  ]),
            )),
      ]),
    );
  }
}
