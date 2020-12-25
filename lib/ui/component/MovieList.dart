import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviefilm/model/Movie.dart';
import 'package:moviefilm/ui/component/cell/movie/TableMovieBox.dart';
import 'package:moviefilm/ui/moviedetail/MovieDetail.dart';

class MoviesList extends StatelessWidget {
  final List<Movie> listMovies;

  MoviesList({Key key, this.listMovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listMovies.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            child: TableMovieBox(
              movie: listMovies[index],
            ),
          ),
          onTap: null,
        );
      },
    );
  }
}