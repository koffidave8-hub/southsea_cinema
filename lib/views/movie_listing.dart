import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();}
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
      body:  Column(
  children: [
    Text('DRACULA (1931) (PG)'),
    Text('Southsea Cinema Room'),
    Text('Thursday 22 Oct 2026, 18:00  - ends at 19:14'),
    Text('Select Quantities (Up to 5 in total)'),
    Text('Tickets'),
    Row(
            children: [
              DropdownMenu<int>(
                initialSelection: 0,
                onSelected: (int? value) {
                  setState(() {
                    _tickets = value ?? 0;
                  });
                },
                dropdownMenuEntries:  [
                  DropdownMenuEntry(value: 0, label: '0'),
                  DropdownMenuEntry(value: 1, label: '1'),
                  DropdownMenuEntry(value: 2, label: '2'),
                  DropdownMenuEntry(value: 3, label: '3'),
                  DropdownMenuEntry(value: 4, label: '4'),
                  DropdownMenuEntry(value: 5, label: '5'),
                ],
              ),
              ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = '$_tickets ticket(s) added to your order';
                });
              },
              child: Text('ADD TO ORDER'),
            ),
            Text(_message),
          ],
        ),
               SizedBox(width: 16),
               Text('Adult (£7.50)'),
            
          Text('You picked: $_tickets'),
 
    
  ],
),
    );
  }
}
