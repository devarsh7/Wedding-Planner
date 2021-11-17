import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_planner/photography.dart';
import 'package:wedding_planner/vendorforms.dart';
import 'package:wedding_planner/venues.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.pink,
        leading: const Icon((Icons.home)),
        bottomOpacity: 0,
        title: const Text("Hello Vendors"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
        maxCrossAxisExtent: 360.0,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Venuesf(),
                  ));
            },
            child: Opacity(
              opacity: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 45, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 0),
                ),
                child: Column(
                  children: const [
                    Icon(
                      CupertinoIcons.placemark_fill,
                      size: 40,
                    ),
                    Text(
                      "Venues",
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Photographyf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: const [
                  Icon(
                    CupertinoIcons.photo_camera_solid,
                    size: 40,
                  ),
                  Text(
                    "Photgraphy",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Makeupf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 0),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.brush_outlined,
                    size: 40,
                  ),
                  Text(
                    "Makeup",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Decorationf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.celebration_outlined,
                    size: 40,
                  ),
                  Text(
                    "Decoration",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cateringf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 0),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.food_bank_outlined,
                    size: 40,
                  ),
                  Text(
                    "Catering",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Photographyf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.my_library_music_outlined,
                    size: 40,
                  ),
                  Text(
                    "Music And Dance",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Photographyf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 0),
              ),
              child: Column(
                children: const [
                  Icon(
                    CupertinoIcons.gift_fill,
                    size: 40,
                  ),
                  Text(
                    "Gifts",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Photographyf(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 45, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: const [
                  Icon(
                    CupertinoIcons.shopping_cart,
                    size: 40,
                  ),
                  Text(
                    "Dresses",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
