import 'package:weather_app/Models/Weather_model.dart';

class WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {

  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);

}

class WeatherFailureState extends WeatherStates {}
