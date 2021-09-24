// @dart=2.9
import 'package:assessment/locator.dart';
import 'package:assessment/ui/router.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assessment',
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
