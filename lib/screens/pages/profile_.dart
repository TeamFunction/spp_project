import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_spp/conf.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody:
      //     true, // Important: to remove background of bottom navigation (making the bar transparent doesn't help)
      // bottomNavigationBar: Container(
      //   decoration: const BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(12.0), // adjust to your liking
      //       topRight: Radius.circular(12.0), // adjust to your liking
      //     ),
      //     color: Color.fromARGB(255, 43, 155, 247), // put the color here
      //   ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color.fromARGB(255, 0, 132, 255),
                Color.fromARGB(255, 0, 221, 255),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.clamp,
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Riwayat',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 25,
                  child: SvgPicture.asset(
                    icTransaksi,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                activeIcon: Container(
                  height: 25,
                  child: SvgPicture.asset(
                    icTransaksi,
                    color: Colors.white,
                  ),
                ),
                label: 'Bayar',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 25,
                  child: SvgPicture.asset(icUser,
                      color: Colors.white.withOpacity(0.5)),
                ),
                activeIcon: Container(
                  height: 25,
                  child: SvgPicture.asset(
                    icUser,
                    color: Colors.white,
                  ),
                ),
                label: 'School',
              ),
            ],
            currentIndex: _selectedIndex,
            // currentIndex: 0,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: Container(
        child: Stack(
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
            ),
          ],
        ),
      ),
    );
  }
}
