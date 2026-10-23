import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';
import 'package:southsea_cinema/models/repositories/movie_repository.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

class MovieListingScreen extends StatelessWidget {
  const MovieListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieRepository repository = MovieRepository();
    final List<Movies> movies = repository.getMovies();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Southsea Cinema'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movies: movies[index]);
        },
      ),
    );
  }
}