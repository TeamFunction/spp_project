import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Tes extends StatelessWidget {
  const Tes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody:
          true, // Important: to remove background of bottom navigation (making the bar transparent doesn't help)
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), // adjust to your liking
            topRight: Radius.circular(12.0), // adjust to your liking
          ),
          color: Colors.red, // put the color here
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.white.withOpacity(0.5),

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
        ), // don't forget to put it
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // widget
            // widget
            const SizedBox(
                height:
                    kBottomNavigationBarHeight) // add space at the bottom due to extendBody property for proper scrolling
          ],
        ),
      ),
    );
  }
}
