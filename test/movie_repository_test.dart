import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movies.dart';
import 'package:southsea_cinema/models/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movies> movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test('getMovies contains the expected mock films', () {
      final MovieRepository repository = MovieRepository();
      final List<Movies> movies = repository.getMovies();

      final Movies killBill = movies[0];
      expect(killBill.id, 'Kill_Bill_TWBA');
      expect(killBill.name, 'Kill Bill: The Whole Bloody Affair');
      expect(killBill.ticketPrice, 7.5);
      expect(killBill.imagePath, isNotEmpty);

      final Movies sympathy = movies[1];
      expect(sympathy.id, 'Sympathy_for_Mr.V');
      expect(sympathy.name, 'Sympathy for Mr. Vengeance');
      expect(sympathy.ticketPrice, 6.5);
      expect(sympathy.imagePath, isNotEmpty);
    });

    test('getMovieById returns matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movies? movie = repository.getMovieById('Kill_Bill_TWBA');

      expect(movie, isNotNull);
      expect(movie?.name, 'Kill Bill: The Whole Bloody Affair');
      expect(movie?.ticketPrice, 7.5);
    });

    test('getMovieById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movies? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });
  });
}