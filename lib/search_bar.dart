import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      child: TextField(
        style: TextStyle(fontSize: 16, color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 16,
            ),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16, color: Colors.black)),
      ),
    );
  }
}