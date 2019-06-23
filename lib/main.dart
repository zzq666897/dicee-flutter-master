import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Center(child: Text('Dave Happy Diceee')),
          backgroundColor: Colors.blue.shade700,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdcnum = 1;
  int rightdcnum = 1;

  void changediceface() {
    setState(() {
      leftdcnum = Random().nextInt(6) + 1;
      rightdcnum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changediceface();
                },
                child: Image.asset("images/dice$leftdcnum.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changediceface();
                },
                child: Image.asset("images/dice$rightdcnum.png")),
          ),
        ],
      ),
    );
  }
}

//use expanded widget for over-sized images use flex to control the ratio
