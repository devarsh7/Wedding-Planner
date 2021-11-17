import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:wedding_planner/globals.dart';

// ignore: use_key_in_widget_constructors
class Photographyv extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _PhotographyvState createState() => _PhotographyvState();
}

class _PhotographyvState extends State<Photographyv> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController venuename = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController capacity = TextEditingController();
  TextEditingController typeofvenue = TextEditingController();
  TextEditingController venueinformation = TextEditingController();

  @override
  void initState() {
    DatabaseReference db1 =
        FirebaseDatabase.instance.reference().child("Vendors//Venues");
    db1.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      ownername.text = values["Owner"];
      venuename.text = values["Venue"];
      typeofvenue.text = values["Type Of Venue"];
      contactnumber.text = values["Number"];
      capacity.text = values["Capacity"];
      venueinformation.text = values["Venue Details"];
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Rambagh Palace'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: ownername,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Owner Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: venuename,
                    decoration: const InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Venue Name',
                      hintText: 'Enter Venue Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: typeofvenue,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Type of Venue ',
                      hintText: 'Enter Venue Type',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Number";
                      }
                      if (value.length > 10) {
                        return "Please Enter Valid Number";
                      }
                    },
                    controller: contactnumber,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Contact Number',
                      hintText: 'Enter Your Contact Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: capacity,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Capacity',
                      hintText: 'Enter Capacity',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 3,
                    controller: venueinformation,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Venue Details (optional)',
                      hintText: 'Enter Venue Details',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      const snackBar = SnackBar(
                          content: Text(
                        'Added to Checklist!!!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text("Add to Checklist"))
              ],
            ),
          ),
        ));
  }
}

class Photographyv2 extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _Photographyv2State createState() => _Photographyv2State();
}

class _Photographyv2State extends State<Photographyv2> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController venuename = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController capacity = TextEditingController();
  TextEditingController typeofvenue = TextEditingController();
  TextEditingController venueinformation = TextEditingController();

  @override
  void initState() {
    DatabaseReference db1 =
        FirebaseDatabase.instance.reference().child("Vendors//VenueS");
    db1.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      ownername.text = values["Owner"];
      venuename.text = values["Venue"];
      typeofvenue.text = values["Type of venue"];
      contactnumber.text = values["Number"];
      capacity.text = values["Capacity"];
      venueinformation.text = values["Venue Details"];
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('The Zuri Hotel'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: ownername,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Owner Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: venuename,
                    decoration: const InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Venue Name',
                      hintText: 'Enter Venue Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: typeofvenue,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Type of Venue ',
                      hintText: 'Enter Venue Type',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Number";
                      }
                      if (value.length > 10) {
                        return "Please Enter Valid Number";
                      }
                    },
                    controller: contactnumber,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Contact Number',
                      hintText: 'Enter Your Contact Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: capacity,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Capacity',
                      hintText: 'Enter Capacity',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 3,
                    controller: venueinformation,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Venue Details (optional)',
                      hintText: 'Enter Venue Details',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      const snackBar =
                          SnackBar(content: Text('Added to Checklist!!!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text("Add to Checklist"))
              ],
            ),
          ),
        ));
  }
}

class Photographyuser extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _PhotographyuserState createState() => _PhotographyuserState();
}

class _PhotographyuserState extends State<Photographyuser> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  void initState() {
    DatabaseReference db1 =
        FirebaseDatabase.instance.reference().child("Vendors//Photography");
    db1.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      ownername.text = values["Owner"];
      companyname.text = values["Company Name"];

      contactnumber.text = values["Number"];

      companyinformation.text = values["Company Details"];
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Weddingraphy'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: ownername,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Owner Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: companyname,
                    decoration: const InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Company Name',
                      hintText: 'Enter Company Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: contactnumber,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Number',
                      hintText: 'Enter Contact Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: companyinformation,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Company Details',
                      hintText: 'Enter Company Details',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      const snackBar =
                          SnackBar(content: Text('Added to Checklist!!!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text("Add to Checklist"))
              ],
            ),
          ),
        ));
  }
}

class Photographyuser2 extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _Photographyuser2State createState() => _Photographyuser2State();
}

class _Photographyuser2State extends State<Photographyuser2> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  void initState() {
    DatabaseReference db1 =
        FirebaseDatabase.instance.reference().child("Vendors//PhotographY");
    db1.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      ownername.text = values["Owner"];
      companyname.text = values["Company Name"];

      contactnumber.text = values["Number"];

      companyinformation.text = values["Company Details"];
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Wedding Diaries'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: ownername,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Owner Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: companyname,
                    decoration: const InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Company Name',
                      hintText: 'Enter Company Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: contactnumber,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Number',
                      hintText: 'Enter Contact Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: companyinformation,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      labelText: 'Company Details',
                      hintText: 'Enter Company Details',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      const snackBar =
                          SnackBar(content: Text('Added to Checklist!!!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: const Text("Add to Checklist"))
              ],
            ),
          ),
        ));
  }
}
