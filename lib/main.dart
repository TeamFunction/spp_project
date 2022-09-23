import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_spp/screens/intro.dart';
import 'package:project_spp/screens/login.dart';
import 'package:project_spp/screens/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // home: Login(),
      // home: IntroScreen(),
    );
  }
}
