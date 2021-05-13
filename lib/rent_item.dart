import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RentPage extends StatefulWidget {
  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                imageProfile(),
                SizedBox(height: 20),
              ],
            ),
          ),



          // Container(
          //   padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
          //   child: Column(
          //     children: <Widget>[
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: 'USER NAME',
          //           labelStyle: TextStyle(
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               color: Colors.grey),
          //           // hintText: 'EMAIL',
          //           // hintStyle: ,
          //           focusedBorder: UnderlineInputBorder(
          //               borderSide: BorderSide(color: Colors.green)),
          //           prefixIcon:
          //           Icon(Icons.face, color: Theme.of(context).shadowColor),
          //         ),
          //       ),
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: 'EMAIL',
          //           labelStyle: TextStyle(
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               color: Colors.grey),
          //           focusedBorder: UnderlineInputBorder(
          //               borderSide: BorderSide(color: Colors.green)),
          //           prefixIcon:
          //           Icon(Icons.email, color: Theme.of(context).shadowColor),
          //         ),
          //       ),
          //       SizedBox(height: 10.0),
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: 'PHONE NUMBER ',
          //           labelStyle: TextStyle(
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               color: Colors.grey),
          //           focusedBorder: UnderlineInputBorder(
          //               borderSide: BorderSide(color: Colors.green)),
          //           prefixIcon:
          //           Icon(Icons.phone, color: Theme.of(context).shadowColor),
          //         ),
          //       ),
          //       SizedBox(height: 10.0),
          //
          //       SizedBox(height: 50.0),
          //       Container(
          //         height: 40.0,
          //         child: Material(
          //           borderRadius: BorderRadius.circular(20.0),
          //           shadowColor: Colors.greenAccent,
          //           color: Colors.green,
          //           elevation: 7.0,
          //           child: GestureDetector(
          //             onTap: () {
          //               //Navigator.of(context).pushNamed('/signup');
          //             },
          //             child: Center(
          //               child: RaisedButton(
          //                 child: Text(
          //                   'SIGNUP',
          //                   style: TextStyle(
          //                       color: Colors.green,
          //                       fontWeight: FontWeight.bold,
          //                       fontFamily: 'Montserrat'),
          //                 ),
          //                 onPressed: () {
          //                   showDialog(
          //                     context: context,
          //                     builder: (context) {
          //                       return AlertDialog(
          //                         title: Text("Enter OTP"),
          //                         content: TextField(
          //                           decoration: InputDecoration(
          //                             labelText: 'OTP ',
          //                             suffixIcon: InkWell(
          //                               child: Icon(
          //                                 Icons.verified,
          //                               ),
          //                             ),
          //                             labelStyle: TextStyle(
          //                                 fontFamily: 'Montserrat',
          //                                 fontWeight: FontWeight.bold,
          //                                 color: Colors.grey),
          //                             focusedBorder: UnderlineInputBorder(
          //                               borderSide:
          //                               BorderSide(color: Colors.green),
          //                             ),
          //                           ),
          //                         ),
          //                         actions: <Widget>[
          //                           FlatButton(
          //                             child: Text("CONFIRM "),
          //                             onPressed: () {},
          //                           ),
          //                           FlatButton(
          //                             child: Text("BACK"),
          //                             onPressed: () {
          //                               Navigator.of(context).pop();
          //                             },
          //                           ),
          //                         ],
          //                       );
          //                     },
          //                   );
          //                 },
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: 20.0),
          //       Container(
          //         height: 40.0,
          //         color: Colors.transparent,
          //         child: Container(
          //           decoration: BoxDecoration(
          //             border: Border.all(
          //                 color: Colors.black,
          //                 style: BorderStyle.solid,
          //                 width: 1.0),
          //             color: Colors.transparent,
          //             borderRadius: BorderRadius.circular(20.0),
          //           ),
          //           child: InkWell(
          //             onTap: () {
          //               Navigator.of(context).pop();
          //             },
          //             child: Center(
          //               child: Text(
          //                 'Go Back',
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.bold,
          //                     fontFamily: 'Montserrat'),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
//
  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 300.0,
            backgroundImage: _imageFile == null
                ? AssetImage("")
                : FileImage(
              File(_imageFile.path),
            ),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 28.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.camera),
                onPressed: () {
                  takephoto(ImageSource.camera);
                },
                label: Text("Camera"),
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takephoto(ImageSource.gallery);
                },
                label: Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takephoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(
          () {
        _imageFile = pickedFile;
      },
    );
  }

}

