import 'package:atfit/Screens/Bodybuilding.dart';
import 'package:atfit/Screens/Cardio.dart';
import 'package:atfit/Screens/Yoga.dart';
import 'package:atfit/Screens/physio.dart';

import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xFFFF9b31),
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottomOpacity: 0.0,
        title: Text(
          'HOME',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF9b31),
          ),
        ),
      ),
      body: ListView(
        children: [
          //*****EXERCISE PANEL */
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFF9b31),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF9b31),
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                height: 350.0,
                child: Center(
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 10.0, bottom: 8.0),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'EXERCISES',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 8.0,
                                          left: 8,
                                        ),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Complete course',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 300,
                                        width: 300,
                                        child: Image.asset(
                                          'assets/images/cardio22.png',
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          //*****1st tile */
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF9b31),
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                height: 150.0,
                child: Center(
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        'CARDIO',
                                        style: TextStyle(
                                          color: Color(0xFFFF9b31),
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Complete course',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          //************2nd tile */
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bodyb(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF9b31),
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                height: 150.0,
                child: Center(
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        'BODY BUILDING',
                                        style: TextStyle(
                                          color: Color(0xFFFF9b31),
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Complete course',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          //*********3rd tile */
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Physiok(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF9b31),
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                height: 150.0,
                child: Center(
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        'PHYSIOTHERAPY',
                                        style: TextStyle(
                                          color: Color(0xFFFF9b31),
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Complete course',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          //**************4th tile */
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Yoga()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFFF9b31),
                      blurRadius: 20.0,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                height: 150.0,
                child: Center(
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Text(
                                        'YOGA',
                                        style: TextStyle(
                                          color: Color(0xFFFF9b31),
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Complete course',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
