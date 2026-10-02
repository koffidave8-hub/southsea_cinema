import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: const Column(
  children: [
    Text('DRACULA (1931) (PG)'),
    Text('Southsea Cinema Room'),
    Text('Thursday 22 Oct 2026, 18:00  - ends at 19:14'),
    Text('Select Quantities (Up to 5 in total)'),
    Text('Tickets'),
  ],
),
    );
  }
}
