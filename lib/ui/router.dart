//@dart=2.9
import 'package:assessment/core/models/weather.dart';
import 'package:assessment/ui/views/weather.view.dart';
import 'package:assessment/ui/views/weather.view.details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WeatherView());
      case 'weatherDetails':
        var weather = settings.arguments as Weather;
        return MaterialPageRoute(
            builder: (_) => WeatherViewDetails(
                  weather: weather,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route defines for ${settings.name}'),
                  ),
                ));
    }
  }
}
