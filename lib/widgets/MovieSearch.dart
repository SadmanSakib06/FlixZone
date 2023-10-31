// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class Movies {
//   final String title;
//   Movies(this.title);
// }
//
// class MovieSearchScreen extends StatefulWidget {
//   @override
//   _MovieSearchScreenState createState() => _MovieSearchScreenState();
// }
//
// class _MovieSearchScreenState extends State<MovieSearchScreen> {
//   final String apiKey = '4d733cdbcc66df7eb5c258201c34f05b'; // Replace with your TMDB API key
//   String searchText = '';
//   List<Movies> searchResults = [];
//
//   Future<void> searchMovies(String query) async {
//     final response = await http.get(
//       Uri.parse('https://api.themoviedb.org/3/search/movie?'
//           'api_key=$apiKey'
//           '&query=$query'),
//     );
//
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       final movies = (data['results'] as List)
//           .map((item) => Movies(item['title'] ?? 'Untitled'))
//           .toList();
//
//       setState(() {
//         searchResults = movies;
//       });
//     } else {
//       setState(() {
//         searchResults.clear();
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Movie Search'),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.search),
//               hintText: 'Search for movies...',
//             ),
//             onChanged: (value) {
//               setState(() {
//                 searchText = value;
//               });
//               if (searchText.isNotEmpty) {
//                 searchMovies(searchText);
//               } else {
//                 setState(() {
//                   searchResults.clear();
//                 });
//               }
//             },
//           ),
//           Expanded(
//             child: searchResults.isNotEmpty
//                 ? ListView.builder(
//               itemCount: searchResults.length,
//               itemBuilder: (context, index) {
//                 final movie = searchResults[index];
//                 return ListTile(
//                   title: Text(movie.title),
//                 );
//               },
//             )
//                 : Center(
//               child: Text('No search results'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
