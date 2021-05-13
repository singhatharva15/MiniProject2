import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rentapp/drawer_screen.dart';
import 'search_bar.dart';
import 'configuration.dart';
import 'chat_screen.dart';

//Container(
//decoration: BoxDecoration(

final List imgList = [
  'images/banner001.png',
  'images/banner2.jpg',
  'images/banner3.jpg',
  'images/banner4.jpg'
];
int itemCount = imgList.length;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // child: AnimatedContainer(
      //   transform: Matrix4.translationValues(xOffset, yOffset, 0)
      //     ..scale(scaleFactor),
      //   duration: Duration(milliseconds: 250),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(isDrawerOpen ? 40.0 : 0),
      //     color: Colors.grey[100],
      //   ),
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.amber[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //isDrawerOpen
                     // ?
              IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DrawerScreen()),
                            );
                            // setState(() {
                            //   xOffset = 0;
                            //   yOffset = 0;
                            //   scaleFactor = 1;
                            //   isDrawerOpen = false;
                            // });
                          },
                        ),
                      // : IconButton(
                      //     icon: Icon(Icons.menu),
                      //     onPressed: () {
                      //       setState(() {
                      //         xOffset = 230;
                      //         yOffset = 150;
                      //         scaleFactor = 0.5;
                      //         isDrawerOpen = true;
                      //       });
                      //     },
                      //   ),
                  Text(
                    'Rent Your Equipments',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  IconButton(
                      icon: Icon(Icons.chat),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatScreen()),
                        );
                      }),
                ],
              ),
            ),
            SearchBar(),
            Expanded(
              child: Container(
                  constraints: BoxConstraints.expand(height: 200),
                  child: imageSlider(context)),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Recommended"),
            // ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 100,
                            width: 100,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    //);
  }

  Swiper imageSlider(context) {
    return new Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return new Image.asset(imgList[index], fit: BoxFit.fill);
      },
      itemCount: imgList.length,
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }
}
