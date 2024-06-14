import 'package:marvel_heroes/models/thumbnail.dart';

class Comic {
  final int id;
  final String title;

  final String format;
  final int paginas;
  final Thumbnail thumbnail;

  Comic({
    required this.id,
    required this.title,
    required this.format,
    required this.paginas,
    required this.thumbnail,
  });

  factory Comic.fromJson(Map<String, dynamic> json) {
    return Comic(
      id: json['id'],
      title: json['title'],

      format: json['format'],
      paginas: json['pageCount'],
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
    );
  }
}
