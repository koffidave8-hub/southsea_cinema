import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movies.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  final Movies movie;

  const MovieListing({super.key, required this.movie});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _tickets = 0;
  String _message = '';

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
      body: Container(
        color: cinemaSurface,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(24),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white, fontSize: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.movie.imagePath,
                  width: 160,
                  height: 280,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                Text(
                  widget.movie.name,
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 30),
                const Text('Southsea Cinema Room'),
                const SizedBox(height: 15),
                Text('(${widget.movie.dateTime})'),
                const SizedBox(height: 30),
                const Text(
                  'Please note that Discounts / Membership Benefits will be '
                  'applied once you have selected your tickets',
                ),
                const SizedBox(height: 15),
                const Text('Select Quantities (Up to 5 in total)'),
                const SizedBox(height: 30),
                const Text(
                  'Tickets',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    DropdownMenu<int>(
                      key: const Key('ticketDropdown'),
                      initialSelection: 0,
                      onSelected: (int? value) {
                        setState(() {
                          _tickets = value ?? 0;
                        });
                      },
                      dropdownMenuEntries: List.generate(
                        6,
                        (i) => DropdownMenuEntry<int>(value: i, label: '$i'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text('Adult (${widget.movie.formattedPrice})'),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  key: const Key('addToOrderButton'),
                  onPressed: () {
                    setState(() {
                      _message = _tickets == 0
                          ? 'Please select at least one ticket'
                          : '$_tickets ticket(s) added to your order';
                    });
                  },
                  child: const Text('ADD TO ORDER'),
                ),
                const SizedBox(height: 20),
                Text(_message),
              ],
            ),
          ),
        ),
      ),
    );
  }
}