import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ballpage(),
  ));
}

class Ballpage extends StatelessWidget {
  const Ballpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int x = 0;

  void change() {
    setState(() {
      x = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Container(
          color: Colors.lightBlue,
          child: Center(
            child: TextButton(
              child: Image(
                image: AssetImage('images/ball$x.png'),
              ),
              onPressed: () {
                change();
                print(x);
              },
            ),
          ),
        ),
      ),
    );
  }
}
