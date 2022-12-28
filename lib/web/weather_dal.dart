import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

String weatherAddress =
    'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/nanjing?unitGroup=metric&include=days&key=BLNPKXXVP6QQ4ZPJ4LGPDXP4X&contentType=json';

Future<Weather> fetchWeather() async {
  final response = await http.get(Uri.parse(weatherAddress));
  if (response.statusCode == 200) {
    return Weather.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load Weather");
  }
}
