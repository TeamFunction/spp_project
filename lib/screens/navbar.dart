import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_spp/conf.dart';
import 'package:project_spp/screens/item.dart';

class Pages extends StatefulWidget {
  const Pages({this.index = 0, Key? key}) : super(key: key);
  final int index;
  @override
  State<Pages> createState() => _PagesState(index);
}

class _PagesState extends State<Pages> {
  _PagesState(this.i);
  int i;
  late int _selectedIndex = i;
  @override
  void initState() {
    super.initState();
    // you can use this.widget.foo here
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                label: 'Akun',
              ),
            ],
            currentIndex: _selectedIndex,
            // currentIndex: 0,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
      body: itemList.elementAt(_selectedIndex),
    );
  }
}
