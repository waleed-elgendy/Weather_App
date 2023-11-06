import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/Weather_model.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());

  getWeather({required String city }) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurretnWeather(city: city);
      emit(WeatherLoadedState(weatherModel));
     // print(weatherModel.date);
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
