import 'package:flutter/cupertino.dart';
import 'package:project_spp/screens/pages/bayar.dart';
import 'package:project_spp/screens/pages/home.dart';
import 'package:project_spp/screens/pages/profile.dart';
import 'package:project_spp/screens/pages/riwayat.dart';

const List<Widget> itemList = <Widget>[
  // Center(child: Text("Home")),
  Home(),
  Riwayat(),
  Bayar(),
  Profile()
];
