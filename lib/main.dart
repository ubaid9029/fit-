import 'package:atfit/Screens/Home.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Excercise());
}

class Excercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home1(),
    );
  }
}
