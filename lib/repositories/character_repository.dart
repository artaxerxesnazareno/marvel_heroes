import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:marvel_heroes/app_env.dart';

import 'package:marvel_heroes/models/character.dart';

class CharacterRepository{
  // static const _baseUrl = 'https://gateway.marvel.com/v1/public';
  final String  _baseUrl = AppEnv.I.baseUrl;
  final String  _headerUrl = AppEnv.I.headerURl;


  Future<List<Character>> fetchCharacters() async {
    if (kDebugMode) {
      print('$_baseUrl/characters?$_headerUrl');
    }
    final response = await http.get(Uri.parse('$_baseUrl/characters?$_headerUrl'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data']['results'];
      return jsonResponse.map((item) => Character.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
  Future<List<Character>> fetchCharactersByname(String heroName) async {
    if (kDebugMode) {
      print('$_baseUrl/characters?nameStartsWith=$heroName$_headerUrl');
    }
    final response = await http.get(Uri.parse('$_baseUrl/characters?nameStartsWith=$heroName&$_headerUrl'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data']['results'];
      return jsonResponse.map((item) => Character.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}