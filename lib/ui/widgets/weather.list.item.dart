// @dart=2.9
import 'package:assessment/core/models/weather.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherListItem extends StatelessWidget {
  final Weather weather;
  final Function onTap;
  const WeatherListItem({this.weather, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  offset: Offset(0.0, 2.0),
                  color: Color.fromARGB(80, 0, 0, 0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              weather.country,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text(weather.softwareType,
                maxLines: 2, overflow: TextOverflow.ellipsis),
            Text(weather.temp.toString(),
                maxLines: 2, overflow: TextOverflow.ellipsis),
            Text(weather.neighborhood ?? "",
                maxLines: 2, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
