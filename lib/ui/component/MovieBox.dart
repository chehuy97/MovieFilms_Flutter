import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/model/Movie.dart';

class MovieBox extends StatelessWidget {
  MovieBox({Key key, this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: double.infinity,
        height: 220,
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
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      movie.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    width: 30,
                    height: 30,
                    child: FlatButton(
                        onPressed: null,
                        padding: EdgeInsets.all(0.0),
                        child: Image(
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
                      image: NetworkImage(movie.image),
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
                                movie.release,
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
                                movie.rate.toString(),
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
                                  movie.overview,
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
