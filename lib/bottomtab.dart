import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'drawer_screen.dart';
import 'explore.dart';
import 'rent_item.dart';
import 'location.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> children = [HomeScreen(), Explore(), RentPage(), Location()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[400],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 18,
        unselectedFontSize: 14,
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            title: Text('Rent'),
            icon: Icon(Icons.library_add),
          ),
          BottomNavigationBarItem(
            title: Text('Location'),
            icon: Icon(Icons.location_on),
          ),
        ],
      ),
    );
  }
}