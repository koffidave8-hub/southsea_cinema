import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movies.dart';

class MovieCard extends StatelessWidget {
  final Movies movies;

  const MovieCard({super.key, required this.movies});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movies.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        movies.description,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Image.asset (
                    movies.imagePath,
                    width: 80,
                    height: 140,
                    fit: BoxFit.cover,
                    
                ),
                const SizedBox(width: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TicketSelector extends StatefulWidget {
  const TicketSelector({super.key});

  @override
  State<TicketSelector> createState() => _TicketSelectorState();
}

class _TicketSelectorState extends State<TicketSelector> {
  int _tickets = 0;
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Tickets', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            DropdownMenu<int>(
              initialSelection: 0,
              onSelected: (int? value) {
                setState(() {
                  _tickets = value ?? 0;
                });
              },
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 0, label: '0'),
                DropdownMenuEntry(value: 1, label: '1'),
                DropdownMenuEntry(value: 2, label: '2'),
                DropdownMenuEntry(value: 3, label: '3'),
                DropdownMenuEntry(value: 4, label: '4'),
                DropdownMenuEntry(value: 5, label: '5'),
              ],
            ),
            const SizedBox(width: 20),
            const Text('Adult (£7.50)'),
          ],
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _message = '$_tickets ticket(s) added to your order';
            });
          },
          child: const Text('ADD TO ORDER'),
        ),
        const SizedBox(height: 8),
        Text(_message),
      ],
    );
  }
}