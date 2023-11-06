import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/Models/Weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  Future<WeatherModel> getCurretnWeather({required String city}) async {
    try {
      Response response = await dio.get(
          "http://api.weatherapi.com/v1/forecast.json?key=3c30bb2b000c425bacd53130231309&q=$city&days=3");

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          "oops there was an error, try later";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was an error, try later");
    }
  }
}
