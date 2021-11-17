import 'package:flutter/material.dart';
import 'package:wedding_planner/vendor.dart';
import 'package:wedding_planner/venues.dart';

import 'list.dart';

class Photographylist extends StatefulWidget {
  const Photographylist({Key? key}) : super(key: key);

  @override
  _PhotographylistState createState() => _PhotographylistState();
}

class _PhotographylistState extends State<Photographylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(" Photographers"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
            itemCount: pitems.length,
            itemBuilder: (context, index) {
              Photography photography = pitems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(photography.url),
                          fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 60),
                      child: Text(
                        photography.name,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Photographyuser(),
                            ));
                      }
                      if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Photographyuser2(),
                            ));
                      }
                    },
                  ),
                ),
              );
            }));
  }
}

class Makeup extends StatefulWidget {
  const Makeup({Key? key}) : super(key: key);

  @override
  _MakeupState createState() => _MakeupState();
}

class _MakeupState extends State<Makeup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Make-up Artist"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
            itemCount: pitems.length,
            itemBuilder: (context, index) {
              Makeups makeups = mitems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(makeups.url), fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 60),
                      child: Text(
                        makeups.name,
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
