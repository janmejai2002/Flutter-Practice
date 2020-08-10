import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent.shade100,
        appBar: AppBar(
          title: Center(
            child: Text('Dice',
            style: TextStyle(color: Colors.black87,
              fontFamily: 'Recursive',
              fontWeight: FontWeight.bold,
            ),
              ),
          ),
          backgroundColor: Colors.white,
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

  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  void genRandom(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber  = Random().nextInt(6) + 1;
      print('rightDiceNumber = $rightDiceNumber');
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(flex: 1,
            child: FlatButton(
              onPressed: (){
                genRandom();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(flex: 1,
              child: FlatButton(onPressed: () {
                genRandom();
              },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}


