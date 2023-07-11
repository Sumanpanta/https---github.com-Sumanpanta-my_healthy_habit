import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    // final today = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
       borderRadius:const BorderRadius.vertical(top: Radius.circular(35)), 
        child: BottomNavigationBar(
          iconSize: 35,
           selectedIconTheme: IconThemeData(
              color: Colors.lightBlue,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.black12,
            ),
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
               icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.person),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: screenHeight * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: Container(
                color: Colors.lightGreen,
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 32,
                  right: 16,
                  bottom: 10,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
