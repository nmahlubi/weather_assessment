// @dart=2.9
import 'package:assessment/core/enums/viewstate.dart';
import 'package:assessment/core/models/weather.dart';
import 'package:assessment/core/services/api.dart';

import '../../locator.dart';
import 'base.model.dart';

class WeatherModel extends BaseModel {
  Api _api = locator<Api>();

  List<Weather> weather;

  Future fetchWeather() async {
    setState(ViewState.Busy);
    weather = await _api.fetchWeather();
    setState(ViewState.Idle);
  }
}
