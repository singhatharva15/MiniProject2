import 'package:flutter/material.dart';
import 'package:rentapp/drawer_screen.dart';
import 'package:rentapp/home_screen.dart';
import 'bottomtab.dart';
//import 'package:/screens/home_screen.dart';


void main()=> runApp(MaterialApp
  (home: MyBottomNavigationBar(),
  debugShowCheckedModeBanner: false,
));


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      // body: Stack(
      //
      //   children: [
      //     DrawerScreen(),
      //     HomeScreen()
      //   ],
      // ),
    );
  }
}
