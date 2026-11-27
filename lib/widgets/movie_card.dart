import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movies.dart';
import 'package:southsea_cinema/views/movie_listing.dart';
import 'package:southsea_cinema/widgets/primary_button.dart';

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
        movies.formattedPrice,
        style: const TextStyle(
          color: cinemaFontWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      PrimaryButton(
        label: 'Book tickets',
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
      ),
    ],
  ),


          ],
        ),
      ),
    );
  }
}
