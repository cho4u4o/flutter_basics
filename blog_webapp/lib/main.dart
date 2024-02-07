import 'package:flutter/material.dart';
import 'package:blog_webapp/Screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
    ),
  );
}

