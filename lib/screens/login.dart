import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/screens/pages/home.dart';
import 'package:project_spp/screens/navbar.dart';

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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: sheight,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  bgRBE,
                  fit: BoxFit.contain,
                ),
              ),
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
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 50, vertical: sheight * 0.2),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Positioned(
                      top: 0,
                      child: Container(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "LOGIN AKUN",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: (sheight / 40),
                                ),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    162, 15, 135, 247),
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                                textStyle: TextStyle(
                                                    color: Colors.white),
                                                alignment: Alignment.center),
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Pages(),
                                                  ),
                                                );
                                              }
                                            },
                                            child: Center(
                                              child: Text(
                                                "LOGIN",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      onSurface: Colors.transparent,
                                      textStyle: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                          decoration: TextDecoration.underline),
                                      alignment: Alignment.center,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Lupa Sandi",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
