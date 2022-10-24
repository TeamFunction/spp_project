import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_spp/components/button.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/models/profile_model.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: Colors.amber.shade300,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff0085FF),
                  Color(0xf600DEFF),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Center(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(
                  "PROFIL",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.asset(
                    profileData[0].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                profileData[0].name,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                ButtonWidget(
                  pressed: () {},
                  childs: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.manage_accounts),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Pengaturan Akun"),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonWidget(
                  pressed: () {},
                  childs: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help_outline),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Bantuan"),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                ButtonWidget(
                    pressed: () {},
                    childs: Center(
                      child: Text(
                        "LOGOUT",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}



//  Container(
//     width: MediaQuery.of(context).size.width * 0.8,
//     height: 40,
//     decoration: BoxDecoration(
//       color: Colors.white,
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.2),
//           offset: Offset(2, 3),
//           spreadRadius: 0.5,
//           blurRadius: 5,
//         )
//       ],
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),
//       ),
//     ),
//     padding: EdgeInsets.symmetric(horizontal: 10),
//     child: 
//  )