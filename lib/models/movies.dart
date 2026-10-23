
class Movies {
  final String id;
  final String name;
  final String description;
  final String dateTime;
  final double ticketPrice;
  final String imagePath;

  const Movies ({
    required this.id,
    required this.name,
    required this.description,
    required this.dateTime,
    required this.ticketPrice,
    required this.imagePath,
    });

  String get formattedPrice => '£${ticketPrice.toStringAsFixed(2)}';
}
