import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: UI(),
      ),
    );

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$answer.png'),
        onPressed: randomAnswers,
      ),
    );
  }

  void randomAnswers() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }
}
