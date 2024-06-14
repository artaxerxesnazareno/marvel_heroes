import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:marvel_heroes/app_env.dart';
import 'package:marvel_heroes/models/Comic.dart';
import 'package:http/http.dart' as http;

class ComicRepository{
  final String  _baseUrl = AppEnv.I.baseUrl;
  final String  _headerUrl = AppEnv.I.headerURl;

  Future<List<Comic>> fetchComics(int idCharacter) async {
    if (kDebugMode) {
      print('$_baseUrl/characters/$idCharacter/comics?$_headerUrl');
    }

    final response = await http.get(Uri.parse('$_baseUrl/characters/$idCharacter/comics?$_headerUrl'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['data']['results'];
      return jsonResponse.map((item) => Comic.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}