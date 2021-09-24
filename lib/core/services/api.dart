// @dart=2.9
import 'dart:convert';
import 'package:assessment/core/models/weather.dart';
import 'package:http/http.dart' as http;

class Api {
  String apis =
      "https://api.weather.com/v2/pws/observations/current?stationId=KMAHANOV10&format=json&units=e&apiKey=de06a1f8d9df421986a1f8d9df621966";

  Future<List<Weather>> fetchWeather() async {
    final response = await http
        .get(Uri.parse(apis), headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      print(parsed);
      List lists = parsed['observations'];
      return lists.map<Weather>((json) => Weather.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
