import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Tractor', 'iconPath': 'images/tractor1.png'},
  {'name': 'Seeder', 'iconPath': 'images/rake.png'},
  {'name': 'Rippers', 'iconPath': 'images/ripper.png'},
  {'name': 'Self-propelled Sprayer', 'iconPath': 'images/sprinkler.png'},
  {'name': 'Lawn Rake', 'iconPath': 'images/spade.png'},
  {'name': 'Pesticides', 'iconPath': 'images/pesticide.png'}
];

List<Map> drawerItems=[
  {
    'icon': Icons.verified,
    'title' : 'Adoption'
  },
  {
    'icon': Icons.mail,
    'title' : 'Donation'
  },
  {
    'icon': Icons.verified,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': Icons.verified,
    'title' : 'Profile'
  },
];