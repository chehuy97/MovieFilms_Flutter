import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xffd3d3d3),
      child: Container(
        width: double.infinity,
        height: 35,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
                top: 5, left: 10, right: 40, bottom: 5, child: TextField()),
            Positioned(
                right: 10,
                top: 5,
                bottom: 5,
                child: Image(
                  image: AssetImage("assets/images/search.png"),
                  width: 20,
                  height: 20,
                ))
          ],
        ),
      ),
    );
  }
}
