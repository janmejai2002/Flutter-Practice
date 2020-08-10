import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
    home: Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/Plants (1).png'),
        )
      ),
      appBar: AppBar(
        title: Text('Plants'),
        backgroundColor: Colors.green,
      ),
    ),
   ),
  );
}

