import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';

class MovieCard extends StatelessWidget {
  final Movies movies;

  const MovieCard({super.key, required this.movies});
  
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}

