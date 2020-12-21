import 'dart:ffi';

class Movie {
  final String image;
  final String name;
  final String rate;
  final String release;
  final String overview;

  Movie({this.image, this.name, this.rate, this.release, this.overview});

factory Movie.fromJson(Map<String, dynamic> json){
  return Movie(
      image: "http://image.tmdb.org/t/p/w185"+json["poster_path"],
      name: json["original_title"],
      rate: json["vote_average"].toString(),
      release: json["release_date"],
      overview: json["overview"]
  );
}

}
