import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Center(child: Text('Hello Flutter!'),),
        ),
        body: const Center(child: Text('Hello World!!'),),
      ),
    );
  }
}
