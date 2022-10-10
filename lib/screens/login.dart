import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_spp/screens/home.dart';

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
              child: Image.asset(
                "assets/images/vector_1.png",
                width: swidth,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/vector_2.png",
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
                      child: Image.asset("assets/images/smk.png"),
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

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

// class Login extends StatelessWidget {
//   @override
  Widget build(BuildContext context) {
    double sheight = MediaQuery.of(context).size.height;
    double swidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            height: sheight,
            child: Stack(children: [
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/vector_3.png",
                    fit: BoxFit.contain,
                    width: (swidth / 1.5),
                  )),
              Center(
                  child: Container(
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
                      margin: EdgeInsets.symmetric(
                          horizontal: 50, vertical: (sheight / 4)),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: (Positioned(
                          top: 0,
                          child: Container(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "LOGIN AKUN",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        fontSize: (sheight / 40)),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "NIP",
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter NIP';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Password';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              child: Stack(
                                                children: [
                                                  Positioned.fill(
                                                      child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        73, 122, 167, 0.64),
                                                  ))),
                                                  TextButton(
                                                      style: TextButton.styleFrom(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      swidth /
                                                                          8,
                                                                  vertical:
                                                                      (sheight /
                                                                          45)),
                                                          textStyle: TextStyle(
                                                              color: Colors
                                                                  .white),
                                                          alignment: Alignment
                                                              .center),
                                                      onPressed: () {
                                                        if (_formKey
                                                            .currentState!
                                                            .validate()) {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Home(
                                                                        title:
                                                                            'Flutter Demo Home Page')),
                                                          );
                                                        }
                                                      },
                                                      child: Text(
                                                          "LOGIN",
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white))),
                                                ],
                                              ))),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                            onSurface: Colors.transparent,
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w300,
                                                decoration:
                                                    TextDecoration.underline),
                                            alignment: Alignment.center,
                                          ),
                                          onPressed: () {},
                                          child: Text("Lupa Sandi",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  decoration: TextDecoration
                                                      .underline))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                      )))
            ])));
  }
}
