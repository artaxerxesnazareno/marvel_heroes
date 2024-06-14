import 'package:flutter/foundation.dart';
import 'package:marvel_heroes/models/Comic.dart';
import 'package:marvel_heroes/repositories/comic_repository.dart';

class ComicUseCase{
  Future<List<Comic>> call(int idCharacter) async {
    var comics = await ComicRepository().fetchComics(idCharacter);
    if (kDebugMode) {
      print('comics: ${comics.map((e) => e.title).toString()}');
    }
    return comics;
  }
}