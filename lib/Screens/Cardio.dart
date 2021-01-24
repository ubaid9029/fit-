import 'package:atfit/Constraint/Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFFFF9b31),
        ),
        backwardsCompatibility: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.white,
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body:
          // ************HEADING 1***********
          Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 8.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 60.0,
                    child: Text(
                      '@Fit',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF9b31)),
                    ),
                  ),
                ),
              ),
              //************Main CONTAINER*********/
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 15.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFF9b31),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFF9b31),
                          blurRadius: 20.0,
                          offset: Offset(0, 10),
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 05.0,
                                  left: 25.0,
                                ),
                                child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'CARDIO',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 30.0,
                                  left: 24.0,
                                ),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'CARDIO',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                    style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 300,
                                width: 180,
                                child: Image.asset(
                                  'assets/images/tran.png',
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25.0),
                                child: Container(
                                  height: 35.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  // ignore: deprecated_member_useb
                                  // ignore: deprecated_member_use
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //**************HEADING 2*********************/
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 60.0,
                  child: Text(
                    'Trending',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF9b31)),
                  ),
                ),
              ),
              Card22("Day 1", "Duration 20 mins",
                  "assets/images/cardio.png"), //*********CARD*****
              Card22("Day 2", "Duration 10 mins",
                  "assets/images/cardio22.png"), //*********CARD*****
              Card22("Day 3", "Duration 20 mins",
                  "assets/images/cardio.png"), //*********CARD*****
              Card22("Day 4", "Duration 10 mins",
                  "assets/images/cardio22.png"), //*********CARD*****
              Card22("Day 5", "Duration 20 mins",
                  "assets/images/cardio.png"), //*********CARD*****
              Card22("Day 6", "Duration 10 mins",
                  "assets/images/cardio22.png"), //*********CARD*****
              Card22("Day 7", "Duration 20 mins",
                  "assets/images/cardio.png"), //*********CARD*****
              Card22("Day 8", "Duration 10 mins",
                  "assets/images/cardio22.png"), //*********CARD*****
            ]),
          ),
        ),
      ),
    );
  }
}
