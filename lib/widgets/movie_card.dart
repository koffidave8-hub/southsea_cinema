import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movies.dart';
import 'package:southsea_cinema/views/movie_listing.dart';

class MovieCard extends StatelessWidget {
  final Movies movies;

  const MovieCard({super.key, required this.movies});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white, fontSize: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movies.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color:  cinemaBrand
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  movies.imagePath,
                  width: 160,
                  height: 280,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    movies.description,
                    style: const TextStyle(color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        movies.dateTime,
        style: const TextStyle(
          color: cinemaFontWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: cinemaBrand,
          foregroundColor: cinemaFontWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MovieListing(movie: movies);
              },
            ),
          );
        },
        child: const Text('Book tickets'),
      ),
    ],
  ),


          ],
        ),
      ),
    );
  }
}
