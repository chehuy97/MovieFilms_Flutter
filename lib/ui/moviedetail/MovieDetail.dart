import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/model/Movie.dart';

class MovieDetail extends StatefulWidget {
  Movie movie;

  MovieDetail({Key key, this.movie}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlatButton(
      color: Colors.yellow,
      onPressed: () {
        // Navigate back to the first screen by popping the current route
        // off the stack.
        Navigator.pop(context);
      },
      child: Text('Go back!'),
    ));
  }
}
