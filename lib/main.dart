// @dart=2.9
import 'dart:async';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:wedding_planner/home.dart';
import 'package:wedding_planner/register.dart';
import 'package:wedding_planner/vendor.dart';
import 'list.dart';
import 'package:wedding_planner/list.dart';

import 'package:wedding_planner/venues.dart';
import 'package:wedding_planner/vendorpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MyGridScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Text("To love, laughter, and happily ever after.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 260.0),
              child: Text("Wedding Wires",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210.0),
              child: Center(
                  child: CircularProgressIndicator(
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation(Colors.green),
                strokeWidth: 10,
              )),
            ),
          ],
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/12/a8/83/12a8831512376ec5b258a4c58e3617c9.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}

/*class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 200,
              child: Carousel(
                autoplay: false,
                autoplayDuration: const Duration(seconds: 3),
                dotSize: 6,
                dotBgColor: Colors.transparent,
                dotColor: Colors.white,
                images: [
                  InkWell(
                    onTap: () {},
                    child: Image.network(
                      "https://edtimes.in/wp-content/uploads/2019/12/indianwedding.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const NetworkImage(
                      "https://www.thestatesman.com/wp-content/uploads/2020/02/QT-O4-9.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/