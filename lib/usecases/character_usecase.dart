import 'package:flutter/foundation.dart';
import 'package:marvel_heroes/models/character.dart';
import 'package:marvel_heroes/repositories/character_repository.dart';

class CharacterUseCase{
  Future<List<Character>>call() async {
    var characters = await CharacterRepository().fetchCharacters();
    if (kDebugMode) {
      print('character: ${characters.map((e) => e.name).toString()}');
    }
    return characters;
  }

  Future<List<Character>>callByName(String heroName) async {
    var characters = await CharacterRepository().fetchCharactersByname(heroName);
    if (kDebugMode) {
      print('character: ${characters.map((e) => e.name).toString()}');
    }
    return characters;
  }

}