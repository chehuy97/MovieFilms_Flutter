import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/model/Movie.dart';

class TableMovieBox extends StatefulWidget {
  final Movie movie;

  TableMovieBox({Key key, this.movie}) : super(key: key);

  @override
  _TableMovieBoxState createState() => _TableMovieBoxState();
}

class _TableMovieBoxState extends State<TableMovieBox> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.5)],
        ),
        //margin: EdgeInsets.all(7),
        child: Column(
          children: [
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Container(
                        width: 350,
                        child: Text(
                          widget.movie.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                    width: 30,
                    height: 30,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            _isFavorite = !_isFavorite;
                          });
                        },
                        padding: EdgeInsets.all(0.0),
                        child: _isFavorite
                            ? Image(
                          image: AssetImage("assets/images/star_selected.png"),
                          width: 25,
                          height: 25,
                        )
                            : Image(
                          image: AssetImage("assets/images/star.png"),
                          width: 25,
                          height: 25,
                        )),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.fromLTRB(10, 0, 20, 10),
                    child: Image(
                      image: NetworkImage(widget.movie.image),
                      width: 120,
                      height: 170,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Release date:",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.movie.release,
                                    style:
                                    TextStyle(fontSize: 17, color: Colors.red),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Rating:",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.movie.rate.toString(),
                                    style:
                                    TextStyle(fontSize: 17, color: Colors.red),
                                  ),
                                  Text(
                                    "/10.0",
                                    style:
                                    TextStyle(fontSize: 17, color: Colors.red),
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Overview:",
                                    style:
                                    TextStyle(fontSize: 17, color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: 60,
                                        child: Text(
                                          widget.movie.overview,
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
