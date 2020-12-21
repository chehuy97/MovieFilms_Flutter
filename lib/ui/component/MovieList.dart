import 'package:flutter/cupertino.dart';
import 'package:moviefilm/model/Movie.dart';
import 'package:moviefilm/ui/component/MovieBox.dart';

class MoviesList extends StatelessWidget{
  final List<Movie> listMovies;

  MoviesList({Key key, this.listMovies}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listMovies.length,
      itemBuilder: (context, index) {
        return Container(
          child: MovieBox(
            movie: listMovies[index],
          ),
        );
      },
    );
  }
}