// @dart=2.9
import 'package:assessment/core/services/api.dart';
import 'package:get_it/get_it.dart';

import 'core/viewmodels/weather.model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());

  locator.registerFactory(() => WeatherModel());
}
