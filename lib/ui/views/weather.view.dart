//@dart=2.9
//import 'dart:js';

import 'package:assessment/core/enums/viewstate.dart';
import 'package:assessment/core/models/weather.dart';
import 'package:assessment/core/viewmodels/weather.model.dart';
import 'package:assessment/ui/shared/text.styles.dart';
import 'package:assessment/ui/shared/ui.helpers.dart';
import 'package:assessment/ui/views/base.view.dart';
import 'package:assessment/ui/widgets/weather.list.item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<WeatherModel>(
      onModelReady: (model) => model.fetchWeather(),
      builder: (context, model, child) => Scaffold(
          // backgroundColor: backgroundColor,
          body: model.state == ViewState.Busy
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  UIHelper.verticalSpaceLarge(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                      child: Text(
                        'Weather Details',
                        style: headerStyle,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Expanded(child: getAccountUi(model.weather)),
                ])),
    );
  }

  Widget getAccountUi(List<Weather> climate) => ListView.builder(
        itemCount: climate.length,
        itemBuilder: (context, index) => WeatherListItem(
          weather: climate[index],
          onTap: () {
            Navigator.pushNamed(context, 'weatherDetails',
                arguments: climate[index]);
          },
        ),
      );
}
