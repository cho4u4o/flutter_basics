import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text('가방 빌려줘',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 40.0,
          )
          ),
        ),
      ),
    ),
  );
}
