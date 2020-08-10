import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home:BallPage()
      ),
    );


class BallPage extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.blueAccent.shade100,
    appBar: AppBar(
      backgroundColor: Colors.deepPurple.shade500,
      title : Center(
        child: Text('Ask me anything',
                  style: TextStyle(
                      color: Colors.white
                  ),
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
  int dispBallNum = 1;

  void changeBall(){
    setState(() {
  dispBallNum = Random().nextInt(5)+1;
    });  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$dispBallNum.png'),
        onPressed: (){changeBall();},
      ),
    );
  }
}


