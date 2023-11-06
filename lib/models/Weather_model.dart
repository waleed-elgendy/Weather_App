import 'package:intl/intl.dart';
import 'package:weather_app/models/forcast_model.dart';

class WeatherModel {
  final String city, country, condition;
  final double temp, maxTemp, minTemp, wind, precip;
  final int humidity;
  final String image,image2,image3;
  final String date;
  final ForCastDayModel forCastDay;


  WeatherModel({
    required this.city,
    required this.country,
    required this.date,
    required this.temp,
    required this.precip,
    required this.wind,
    required this.humidity,
    required this.image,
    required this.image2,
    required this.image3,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.forCastDay,

  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['current']['condition']['icon'],
      image2: json["forecast"]["forecastday"][1]["day"]["condition"]["icon"],
      image3: json["forecast"]["forecastday"][2]["day"]["condition"]["icon"],
      city: json['location']['name'],
      country: json['location']['country'],
      precip: json['current']['precip_mm'],
      wind: json['current']['wind_kph'],
      humidity: json['current']['humidity'],
      date: DateFormat('dd-MM-yyyy')
          .format(DateTime.parse(json['current']['last_updated'])),
      temp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: json['current']['condition']['text'],
      forCastDay: ForCastDayModel.fromJson(json['forecast']['forecastday']),


    );
  }
}
