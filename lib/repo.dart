import 'dart:async';
import 'dart:convert';

import 'package:flutter_example/photo.dart';
import 'package:http/http.dart' as http;

class Repo {
  Future<List<Photo>> fetchPhotos() async {
    final response =
        await http.get('https://picsum.photos/v2/list?page=2&limit=60');
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var photos = data as List;
      return photos.map<Photo>((json) => Photo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}
