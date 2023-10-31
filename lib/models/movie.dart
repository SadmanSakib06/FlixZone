
class Movie{
  String title;
  String backdrop_path;
  String original_title;
  String overview;
  String poster_path;
  String release_date;
  double vote_average;

  Movie({
    required this.title,
    required this.backdrop_path,
    required this.original_title,
    required this.overview,
    required this.poster_path,
    required this.release_date,
    required this.vote_average,
});

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
        title: json['title'].toString(),
        backdrop_path: json['backdrop_path'].toString(),
        original_title: json['original_title'].toString(),
        overview: json['overview'].toString(),
        poster_path: json['poster_path'].toString(),
        release_date: json['release_date'].toString(),
        vote_average: json['vote_average'].toDouble(),

    );
  }

}




// "adult": false,
// "backdrop_path": "/4DpVWbDmYanToTTkTp2SQLQX1p4.jpg",
// "id": 807172,
// "title": "The Exorcist: Believer",
// "original_language": "en",
// "original_title": "The Exorcist: Believer",
// "overview": "When his daughter and her friend show signs of demonic possession, it unleashes a chain of events that forces single father, Victor Fielding, to confront the nadir of evil. Terrified and desperate, he seeks out the only person alive who's witnessed anything like it before.",
// "poster_path": "/qVKirUdmoex8SdfUk8WDDWwrcCh.jpg",
// "media_type": "movie",
// "genre_ids": [
// 27
// ],
// "popularity": 985.16,
// "release_date": "2023-10-04",
// "video": false,
// "vote_average": 5.828,
// "vote_count": 198