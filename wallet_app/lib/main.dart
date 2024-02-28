// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text('Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.
                  withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text('\$5 194 482',
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white.
                  withOpacity(0.8),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF2B33A),
                      borderRadius: BorderRadius.circular(45)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text('Transfer',
                      style: TextStyle(
                        fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF2B33A),
                        borderRadius: BorderRadius.circular(45)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text('Transfer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}