import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:moviefilm/model/Movie.dart';
import 'package:moviefilm/ui/component/MovieList.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HomeScreen extends StatefulWidget{

  HomeScreen({Key key}):super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  Future<List<Movie>> futureMovie;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureMovie = fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Movie>>(
        future: futureMovie,
        builder: (context, snapshot) {
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData ? MoviesList(listMovies: snapshot.data,):Center(child: CircularProgressIndicator(),);
        },
      ),
     // bottomNavigationBar: MovieBottomBar()
    );
  }
}

List<Movie> parseMovies(String responseBody){
  final data = json.decode(responseBody);
  final listResults = data.values.toList()[1];
  final listMovies = listResults.map<Movie>((json) => Movie.fromJson(json)).toList();
  return listMovies;
}

Future<List<Movie>> fetchMovies() async {
  final response = await http.get("https://api.themoviedb.org/3/movie/popular?api_key=0267c13d8c7d1dcddb40001ba6372235");
  if (response.statusCode == 200){
    return parseMovies(response.body);
    // List jsonResponse = json.decode(response.body);
    //
    // return jsonResponse.map((movie) => new Movie.fromJson(movie["results"])).toList();
  } else {
    throw Exception("Error fetch data");
  }
}
