import 'package:flutter/material.dart';

class IntroModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  IntroModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<IntroModel> screens = <IntroModel>[
  IntroModel(
      img: 'assets/images/smk.png',
      text: "SELAMAT DATANG DI PEMBAYARAN SPP\nSMKN 1 KOTA PASURUAN",
      desc: "",
      bg: Colors.white,
      button: Colors.blue.shade300),
  IntroModel(
      img: 'assets/images/payment.png',
      text: "PEMBAYARAN MENJADI LEBIH MUDAH DAN CEPAT",
      desc: "",
      bg: Colors.white,
      button: Colors.blue.shade300),
];
