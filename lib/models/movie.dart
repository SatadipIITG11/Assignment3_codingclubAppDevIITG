class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;
// constructor of movie app
  Movie(
      {required this.title,
      required this.backDropPath,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.voteAverage});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json['title'],
        backDropPath:json['backdrop_path'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        posterPath:json['poster_path'],
        releaseDate: json['release_date'],
        voteAverage: json['vote_average']);
  }

  
}


            // "adult": false,
            // "backdrop_path": "/r9oTasGQofvkQY5vlUXglneF64Z.jpg",
            // "genre_ids": [
            //     28,
            //     35
            // ],
            // "id": 1029575,
            // "original_language": "en",
            // "original_title": "The Family Plan",
            // "overview": "Dan Morgan is many things: a devoted husband, a loving father, a celebrated car salesman. He's also a former assassin. And when his past catches up to his present, he's forced to take his unsuspecting family on a road trip unlike any other.",
            // "popularity": 1853.509,
            // "poster_path": "/a6syn9qcU4a54Lmi3JoIr1XvhFU.jpg",
            // "release_date": "2023-12-14",
            // "title": "The Family Plan",
            // "video": false,
            // "vote_average": 7.395,
            // "vote_count": 653
