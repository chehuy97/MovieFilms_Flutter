import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/ui/component/SearchBox.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SearchBox(),
          )
        ],
      ),
    );
  }
}
