import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopBar extends StatelessWidget {
  const TopBar({this.title = "", this.leftIcon, Key? key}) : super(key: key);

  final Widget? leftIcon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // color: Colors.amber.shade300,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff0085FF),
            Color(0xf600DEFF),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),

        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Center(
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 40,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leftIcon != null
                  ? Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 222, 255),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(3, 2),
                              blurRadius: 5,
                            ),
                          ]),
                      child: leftIcon,
                    )
                  : Container(),
              Center(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
