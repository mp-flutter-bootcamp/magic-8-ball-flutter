import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int currentBall = 1;
  Random random = new Random();

  void reRollBall() {
    setState(() {
      currentBall = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: SafeArea(
        child: Center(
          child: FlatButton(
            onPressed: reRollBall,
            child: Image.asset('images/ball$currentBall.png'),
          ),
        ),
      ),
    );
  }
}
