import 'dart:ui';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wedding_planner/list.dart';

import 'package:wedding_planner/photography.dart';
import 'package:wedding_planner/vendor.dart';
import 'package:wedding_planner/venues.dart';

class MyGridScreen extends StatefulWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.black,
          iconSize: 25,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
                activeColor: Colors.white,
                inactiveColor: Colors.blue),
            BottomNavyBarItem(
                icon: const Icon(Icons.shop),
                title: const Text("Shop"),
                activeColor: Colors.white,
                inactiveColor: Colors.blue),
            BottomNavyBarItem(
                icon: const Icon(Icons.search),
                title: const Text("Search"),
                activeColor: Colors.white,
                inactiveColor: Colors.blue)
          ],
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Checklist(),
                  ));
            },
            icon: const Icon(Icons.checklist),
            tooltip: "Checklist",
            focusColor: Colors.black,
            hoverColor: Colors.black,
          )
        ],
        elevation: 20,
        shadowColor: Colors.pink,
        leading: const Icon((Icons.home)),
        bottomOpacity: 0,
        title: const Text("Home"),
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
                    builder: (context) => const Venuelist(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 85, left: 60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 2),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.fodors.com/wp-content/uploads/2020/08/ExpensiveWeddingVenues__HERO__HERO-CAR-WED-08.jpg"),
                      fit: BoxFit.cover)),
              child: const Text(
                "Venues",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Photographylist(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 90, left: 40),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://image.wedmegood.com/resized/800X/uploads/member/1146541/1585406770_Screenshot_from_2020_03_28_20_08_46.png"),
                      fit: BoxFit.cover)),
              child: const Text('Photography',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Makeup(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 2),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://st2.depositphotos.com/1010669/6303/i/600/depositphotos_63032751-stock-photo-brush-with-powder.jpg"),
                      fit: BoxFit.cover)),
              child: const Text('Makeup',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 85, left: 35),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.shaadisaga.com/shaadisaga_production/photos/pictures/001/076/925/original/0_%282%29.jpg?1567861209"),
                      fit: BoxFit.cover)),
              child: const Text('Decoration',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 100, left: 55),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.white, width: 4),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://foodtruckempire.com/wp-content/uploads/mexican-food-catering-spread.png"),
                    fit: BoxFit.cover)),
            child: const Text('Catering',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow)),
          ),
          Container(
            padding: const EdgeInsets.only(top: 100, left: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.musictech.net/wp-content/uploads/2019/10/tutorial-create-edm-free-header@1400x1050.jpg"),
                    fit: BoxFit.cover)),
            child: const Text('Music And Dance',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow)),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 80, left: 60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.white, width: 2),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lmdHN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                      fit: BoxFit.cover)),
              child: const Text('Gifts',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 85, left: 35),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.brides.com/thmb/6jrzfkyiTwEhLJGotKAa4miq1CE=/2590x2590/smart/filters:no_upscale()/MJ112720tandon-Friday-1092-6ad8260df26d4f1c94728f86484f49f4.jpg"),
                      fit: BoxFit.cover)),
              child: const Text('Dresses',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),
          ),
        ],
      )),
    );
  }
}

class Checklist extends StatefulWidget {
  const Checklist({Key? key}) : super(key: key);

  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Edit your Checklist"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
            itemCount: citems.length,
            itemBuilder: (context, index) {
              Cart cart = citems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(cart.url), fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 60),
                      child: Text(
                        cart.name,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
