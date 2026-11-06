import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  group('App smoke tests', () {
    testWidgets('App displays HomeView as home with title',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text(appTitle), findsOneWidget);
      expect(find.text('Welcome to $appTitle'), findsOneWidget);
    });

    testWidgets('Displays movie cards with names and prices',
        (WidgetTester tester) async {
      // Make the test screen tall enough that both cards are built
      tester.view.physicalSize = const Size(800, 2000);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('Kill Bill: The Whole Bloody Affair'), findsOneWidget);
      expect(find.text('£7.50'), findsOneWidget);
      expect(find.text('Sympathy for Mr. Vengeance'), findsOneWidget);
      expect(find.text('£6.50'), findsOneWidget);
    });

    testWidgets('Displays a booking button for each film',
        (WidgetTester tester) async {
      tester.view.physicalSize = const Size(800, 2000);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('Book tickets'), findsNWidgets(2));
    });
  });
}