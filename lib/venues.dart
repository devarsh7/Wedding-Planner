import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedding_planner/home.dart';
import 'package:wedding_planner/main.dart';
import 'package:wedding_planner/vendor.dart';

import 'list.dart';

class Venuelist extends StatefulWidget {
  const Venuelist({Key? key}) : super(key: key);

  @override
  _VenuelistState createState() => _VenuelistState();
}

class _VenuelistState extends State<Venuelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(" Venues"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              Gdw gwd = info[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(gwd.url), fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 60),
                      child: Text(
                        gwd.name,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 170),
                      child: Text(
                        gwd.capacity,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Photographyv(),
                            ));
                      }
                      if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Photographyv2(),
                            ));
                      }
                    },
                  ),
                ),
              );
            }));
  }
}

class Gwdvenue extends StatefulWidget {
  const Gwdvenue({Key? key}) : super(key: key);

  @override
  _GwdvenueState createState() => _GwdvenueState();
}

class _GwdvenueState extends State<Gwdvenue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Garden Wedding Venues"),
          backgroundColor: Colors.pink,
        ),
        body: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              Gdw gwd = info[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: NetworkImage(gwd.url), fit: BoxFit.cover)),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 60),
                      child: Text(
                        gwd.name,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 170),
                      child: Text(
                        gwd.capacity,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Photographyv(),
                          ));
                    },
                  ),
                ),
              );
            }));
  }
}
