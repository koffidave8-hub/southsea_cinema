import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movies.dart';

void main() {
  group('Movies model tests', () {
    test('creates Movies instance with given properties', () {
      const movie = Movies(
        id: 'film_test',
        name: 'Test ',
        description: 'test test test.',
        dateTime: 'Friday 16 oct 2026, 15:00',
        ticketPrice: 7.5,
        imagePath: 'assets/images/test.jpg',
      );

      expect(movie.id, 'film_test');
      expect(movie.name, 'Test');
      expect(movie.description, 'test test test');
      expect(movie.dateTime, 'Friday 16 oct 2026, 15:00');
      expect(movie.ticketPrice, 7.5);
      expect(movie.imagePath, 'assets/images/test.jpg');
    });

    test('formattedPrice shows two decimal places', () {
      const wholePound = Movies(
        id: 'pound',
        name: 'Pound',
        description: 'test test test',
        dateTime: 'Saturday 17 oct 2026, 17:30',
        ticketPrice: 9,
        imagePath: 'assets/images/test.jpg',
      );

      const withPence = Movies(
        id: 'pence',
        name: 'Pence',
        description: 'test test test',
        dateTime: 'Saturday 17 oct 2026, 17:30',
        ticketPrice: 6.5,
        imagePath: 'assets/images/test.jpg',
      );

      expect(wholePound.formattedPrice, '£9.00');
      expect(withPence.formattedPrice, '£6.50');
    });
  });
}