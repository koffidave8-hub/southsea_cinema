import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();}
  class _MovieListingState extends State<MovieListing> {
  int _tickets = 0;
  String _message = '' ;
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
      body:  Container(
  color: cinemaSurface,
  width: double.infinity,
  height: double.infinity,
  padding: const EdgeInsets.all(24),
  child: DefaultTextStyle(
    style: const TextStyle(color: Colors.white, fontSize: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

  children: [
    Text('DRACULA (1931) (PG)', style: TextStyle(fontSize: 30), ),
    SizedBox(height: 30),
    Text('Southsea Cinema Room'),
    SizedBox(height: 15),
    Text('Thursday 22 Oct 2026, 18:00  - ends at 19:14'),
    SizedBox(height: 30),
    Text('Please note thot Discounts / Membership Benefits will be applied once you have selected your tickets'),
    SizedBox(height: 15),
    Text('Select Quantities (Up to 5 in total)'),
    SizedBox(height: 30),
    Text('Tickets', style: TextStyle(fontWeight: FontWeight.bold)),
    SizedBox(height: 15),
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
              SizedBox(width: 20),
                  Text('Adult (£7.50)'),
        
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
              SizedBox(height: 15),
              Text(_message),
              
            ],
          ),
        ),
      ),
    );
  }
}