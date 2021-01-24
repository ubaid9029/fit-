import 'package:atfit/vedio.dart';
import 'package:flutter/material.dart';

class Card22 extends StatefulWidget {
  final heading, desc, img;
  Card22(this.heading, this.desc, this.img);
  @override
  _Card22State createState() => _Card22State(heading, desc, img);
}

class _Card22State extends State<Card22> {
  final heading, desc, img;
  _Card22State(this.heading, this.desc, this.img);
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Vedio(),
          ),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
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
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  heading,
                                  style: TextStyle(
                                    color: Color(0xFFFF9b31),
                                    fontSize: 25.0,
                                  ),
                                ),
                              ),
                              Text(
                                desc,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          img,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
