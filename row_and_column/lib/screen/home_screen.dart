import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          // 주축 크기의 max와 min, 주축에서의 크기지정
          children: [
              // Expanded / Flexible
            Flexible(
              child: Container(
                color: Color(0xFFE2EE83),
                width: 50.0,
                height: 60.0,
                  ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: 50.0,
                height: 60.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFFB8FCCC),
                width: 50.0,
                height: 60.0,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 50.0,
                height: 60.0,
              ),
            ),
            Container(
              color: Colors.red,
              width: 50.0,
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}