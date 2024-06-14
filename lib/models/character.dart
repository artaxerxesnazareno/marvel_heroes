import 'package:marvel_heroes/models/thumbnail.dart';

import 'Comic.dart';

class Character {
  final int id;
  final String name;
  final String description;
  final Thumbnail thumbnail;
  final Comic? comics;
  Character({
    required this.id,
    required this.name,
    required this.description,
    required this.thumbnail,
     this.comics,
  });

  factory Character.fromJson(Map<String, dynamic> json) {

    return Character(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      // comics: Comic.fromJson(json['comics']),
    );


  }
}
