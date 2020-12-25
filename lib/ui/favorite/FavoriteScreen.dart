import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/ui/component/SearchBox.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [SearchBox()],
              ),
            ),
          ],
        ));
  }
}
