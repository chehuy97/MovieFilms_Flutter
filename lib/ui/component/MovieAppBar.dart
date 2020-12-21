import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MovieAppBar({Key key, this.title}):super(key: key);
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(this.title),
    );
  }
}