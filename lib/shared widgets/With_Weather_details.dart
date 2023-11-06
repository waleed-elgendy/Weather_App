import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/Models/Weather_model.dart';
import 'package:weather_app/shared%20widgets/Search_Field.dart';

class WithWeatherDetails extends StatelessWidget {
  const WithWeatherDetails({required this.weatherModel, super.key});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0B0C1E),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: const TextStyle(fontSize: 20),
                "Today ${weatherModel.date}"),
            const SizedBox(height: 10),

          ],
        ),
        actions: [
          SearchField(),
        ],
      ),
      body: Container(
          color: const Color(0xff0B0C1E),
          child: Stack(
            children: [
              Positioned
                (top: 0,
                left: 15,
                child: Row(
                children: [
                  const Icon(Icons.location_on_outlined,color: Colors.white70,),
                  Text(
                      style: const TextStyle(fontSize: 16, color: Colors.white70),
                      "${weatherModel.city}, ${weatherModel.country}")
                ],
              ),),
              Positioned(
                top: 10,
                left: 60,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.network("https:${weatherModel.image!}",
                      width: 280, fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 155,
                left: 150,
                child: Column(
                  children: [
                    Text(
                      weatherModel.temp.toInt().toString(),
                      style: const TextStyle(
                          fontSize: 110,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      weatherModel.condition,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 155,
                left: 270,
                child: Text(
                  "°",
                  style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 350,
                left: 25,
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.droplet,
                            color: Colors.white70),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${weatherModel.precip.toInt().toString()}%",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.wind,
                            color: Colors.white70),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${weatherModel.wind.toInt().toString()} Km/h",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.temperatureHalf,
                            color: Colors.white70),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${weatherModel.humidity.toString()}%",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
              ),const Positioned(
                top: 430,
                left: 15,
                child: Text(
                  "3-Day Forcast",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white),
                ),
              ),
              Positioned(
                top: 480,
                left: 15,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date1,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white60),
                        ),
                        const SizedBox(width: 80,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image}"),
                        ),
                        const SizedBox(width: 75,),
                        Text(
                          "${weatherModel.forCastDay.minTemp1.toInt().toString()}°/${weatherModel.forCastDay.maxTemp1.toInt().toString()}°",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date2,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white60),
                        ),
                        const SizedBox(width: 80,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image2}"),
                        ),
                        const SizedBox(width: 75,),
                        Text(
                          "${weatherModel.forCastDay.minTemp2.toInt().toString()}°/${weatherModel.forCastDay.maxTemp2.toInt().toString()}°",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date3,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white60),
                        ),
                        const SizedBox(width: 80,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image3}"),
                        ),
                        const SizedBox(width: 75,),
                        Text(
                          "${weatherModel.forCastDay.minTemp3.toInt().toString()}°/${weatherModel.forCastDay.maxTemp3.toInt().toString()}°",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
