import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            centerTitle: true,
            title: Text('Ask Me Anything'),
          ),
          body: BallsPageStatLess(),
        ),
      ),
    );

class BallsPageStatLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BallsPageStatFull();
  }
}

class BallsPageStatFull extends StatefulWidget {
  @override
  _BallsPageStatFullState createState() => _BallsPageStatFullState();
}

class _BallsPageStatFullState extends State<BallsPageStatFull> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print('I Have Image Number $ballNumber');
            });
          },
        ),
      ),
    );
  }
}
