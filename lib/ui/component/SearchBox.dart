import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.green,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(2),
      //   color: Colors.white,
      //   boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.5)],
      // ),
      child: Text("Search box"),
    );
  }
}