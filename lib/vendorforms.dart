import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:wedding_planner/vendorpage.dart';

class Venuesf extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _VenuesfState createState() => _VenuesfState();
}

class _VenuesfState extends State<Venuesf> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController venuename = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController capacity = TextEditingController();
  TextEditingController typeofvenue = TextEditingController();
  TextEditingController venueinformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Venue Details'),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Venue Details (optional)',
                        hintText: 'Enter Venue Details',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async {
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Owner")
                                .set(ownername.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Venue")
                                .set(venuename.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Type Of Venue")
                                .set(typeofvenue.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Number")
                                .set(contactnumber.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Capacity")
                                .set(capacity.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Venues")
                                .child("Venue Details")
                                .set(venueinformation.text)
                                .asStream();
                          },
                        ),
                      )),
                ],
              )),
        ));
  }
}

class Photographyf extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _PhotographyfState createState() => _PhotographyfState();
}

class _PhotographyfState extends State<Photographyf> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Photography Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: ownername,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Name',
                        hintText: 'Enter Company Name',
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Contact Number',
                        hintText: 'Enter Your Contact Number',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLines: 3,
                      controller: companyinformation,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Details (optional)',
                        hintText: 'Enter Company Details',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () {
                            ref
                                .child("Vendors")
                                .child("Photography")
                                .child("Owner")
                                .set(ownername.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Photography")
                                .child("Company Name")
                                .set(companyname.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Photography")
                                .child("Number")
                                .set(contactnumber.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Photography")
                                .child("Company Details")
                                .set(companyinformation.text)
                                .asStream();
                          },
                        ),
                      )),
                ],
              )),
        ));
  }
}

class Makeupf extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _MakeupfState createState() => _MakeupfState();
}

class _MakeupfState extends State<Makeupf> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Makeup Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: ownername,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Name',
                        hintText: 'Enter Company Name',
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Contact Number',
                        hintText: 'Enter Your Contact Number',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLines: 3,
                      controller: companyinformation,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Details (optional)',
                        hintText: 'Enter Company Details',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async {
                            ref
                                .child("Vendors")
                                .child("Makeup")
                                .child("Owner")
                                .set(ownername.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Makeup")
                                .child("Company Name")
                                .set(companyname.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Makeup")
                                .child("Number")
                                .set(contactnumber.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Makeup")
                                .child("Company Details")
                                .set(companyinformation.text)
                                .asStream();
                          },
                        ),
                      )),
                ],
              )),
        ));
  }
}

class Decorationf extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _DecorationfState createState() => _DecorationfState();
}

class _DecorationfState extends State<Decorationf> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Decoration Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: ownername,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Name',
                        hintText: 'Enter Company Name',
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Contact Number',
                        hintText: 'Enter Your Contact Number',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLines: 3,
                      controller: companyinformation,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Details (optional)',
                        hintText: 'Enter Company Details',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async {
                            ref
                                .child("Vendors")
                                .child("Decoration")
                                .child("Owner")
                                .set(ownername.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Decoration")
                                .child("Company Name")
                                .set(companyname.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Decoration")
                                .child("Number")
                                .set(contactnumber.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Decoration")
                                .child("Company Details")
                                .set(companyinformation.text)
                                .asStream();
                          },
                        ),
                      )),
                ],
              )),
        ));
  }
}

class Cateringf extends StatefulWidget {
  late final FirebaseApp app;

  @override
  _CateringfState createState() => _CateringfState();
}

class _CateringfState extends State<Cateringf> {
  final referenceDatabase = FirebaseDatabase.instance.reference();
  TextEditingController ownername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController contactnumber = TextEditingController();
  TextEditingController companyinformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ref = referenceDatabase.reference();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Caterer Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: ownername,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Name',
                        hintText: 'Enter Company Name',
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Contact Number',
                        hintText: 'Enter Your Contact Number',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLines: 3,
                      controller: companyinformation,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        labelText: 'Company Details (optional)',
                        hintText: 'Enter Company Details',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        width: 300,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: const Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async {
                            ref
                                .child("Vendors")
                                .child("Catering")
                                .child("Owner")
                                .set(ownername.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Catering")
                                .child("Company Name")
                                .set(companyname.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Catering")
                                .child("Number")
                                .set(contactnumber.text)
                                .asStream();
                            ref
                                .child("Vendors")
                                .child("Catering")
                                .child("Company Details")
                                .set(companyinformation.text)
                                .asStream();
                          },
                        ),
                      )),
                ],
              )),
        ));
  }
}
