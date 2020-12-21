import 'package:flutter/material.dart';
import 'package:moviefilm/ui/component/MovieAppBar.dart';
import 'package:moviefilm/ui/component/MovieBottomBar.dart';
import 'package:moviefilm/ui/home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Film',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MovieBottomBar(),
    );
  }
}