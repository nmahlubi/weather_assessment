// @dart=2.9
import 'package:assessment/core/models/weather.dart';
import 'package:assessment/ui/shared/app.colors.dart';
import 'package:assessment/ui/shared/text.styles.dart';
import 'package:assessment/ui/shared/ui.helpers.dart';
import 'package:assessment/ui/widgets/text.decription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherViewDetails extends StatelessWidget {
  final Weather weather;
  const WeatherViewDetails({Key key, this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(weather.country),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 300),
                      Text(
                        '${weather.neighborhood}',
                        style: detailsHeaderStyle,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '${weather.temp}',
                        style: detailsSubStyle,
                        textAlign: TextAlign.right,
                      ),
                      Divider(color: Colors.white),
                      UIHelper.verticalSpaceMedium(),
                      Divider(color: Colors.white),
                      // SizedBox(height: 32),
                      Text(
                        'Software Type',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${weather.softwareType}',
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Longitude',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${weather.lon}',
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Latitude',
                        style: fontSizeStyle,
                      ),
                      TextDescription(
                        name: '${weather.lat}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
