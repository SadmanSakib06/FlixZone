import 'dart:convert';

import 'package:movie_app/widgets/constants.dart';

import '../models/movie.dart';

import 'package:http/http.dart' as http;

class Api {
  static const trendingURL =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';

  static const newURL =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=${Constants.apiKey}';

  static const mustWatchURL =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';


  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(trendingURL));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something has gone wrong');
    }
  }

  Future<List<Movie>> getNewReleased() async {
    final response = await http.get(Uri.parse(newURL));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something has gone wrong');
    }
  }

  Future<List<Movie>> getMustWatch() async {
    final response = await http.get(Uri.parse(mustWatchURL));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something has gone wrong');
    }
  }
}
