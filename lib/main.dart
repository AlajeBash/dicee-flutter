import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                }),
          ),
          Expanded(
            child: TextButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                  ;
                }),
          ),
        ],
      ),
    );
  }
}
