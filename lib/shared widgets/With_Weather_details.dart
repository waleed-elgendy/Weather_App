import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                style:  TextStyle(fontSize: 20.sp),
                "Today ${weatherModel.date}"),
             SizedBox(height: 10.h),
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
                (top: 0.h,
                left: 15.w,
                child: Row(
                children: [
                  const Icon(Icons.location_on_outlined,color: Colors.white70,),
                  Text(
                      style:  TextStyle(fontSize: 16.sp, color: Colors.white70),
                      "${weatherModel.city}, ${weatherModel.country}")
                ],
              ),),
              Positioned(
                top: 10.h,
                left: 60.w,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.network("https:${weatherModel.image}",
                      width: 280.w, fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: 155.h,
                left: 150.w,
                child: Column(
                  children: [
                    Text(
                      weatherModel.temp.toInt().toString(),
                      style:  TextStyle(
                          fontSize: 110.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      weatherModel.condition,
                      style:  TextStyle(fontSize: 18.sp, color: Colors.white),
                    ),
                  ],
                ),
              ),
               Positioned(
                top: 155.h,
                left: 270.w,
                child: Text(
                  "°",
                  style: TextStyle(
                      fontSize: 90.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 350.h,
                left: 25.w,
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.droplet,
                            color: Colors.white70),
                         SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "${weatherModel.precip.toInt().toString()}%",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
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
                         SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "${weatherModel.wind.toInt().toString()} Km/h",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
                        ),
                      ],
                    ),
                     SizedBox(
                      width: 70.w,
                    ),
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.temperatureHalf,
                            color: Colors.white70),
                         SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "${weatherModel.humidity.toString()}%",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
              ), Positioned(
                top: 430.h,
                left: 15.w,
                child: Text(
                  "3-Day Forcast",
                  style: TextStyle(
                      fontSize: 20.sp, color: Colors.white),
                ),
              ),
              Positioned(
                top: 480.h,
                left: 15.w,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date1,
                          style:  TextStyle(
                              fontSize: 18.sp, color: Colors.white60),
                        ),
                         SizedBox(width: 80.w,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image}"),
                        ),
                         SizedBox(width: 75.w,),
                        Text(
                          "${weatherModel.forCastDay.minTemp1.toInt().toString()}°/${weatherModel.forCastDay.maxTemp1.toInt().toString()}°",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date2,
                          style:  TextStyle(
                              fontSize: 18.sp, color: Colors.white60),
                        ),
                         SizedBox(width: 80.w,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image2}"),
                        ),
                         SizedBox(width: 75.w,),
                        Text(
                          "${weatherModel.forCastDay.minTemp2.toInt().toString()}°/${weatherModel.forCastDay.maxTemp2.toInt().toString()}°",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          weatherModel.forCastDay.date3,
                          style:  TextStyle(
                              fontSize: 18.sp, color: Colors.white60),
                        ),
                         SizedBox(width: 80.w,),
                        Opacity(
                          opacity: 0.6,
                          child: Image.network("https:${weatherModel.image3}"),
                        ),
                         SizedBox(width: 75.w,),
                        Text(
                          "${weatherModel.forCastDay.minTemp3.toInt().toString()}°/${weatherModel.forCastDay.maxTemp3.toInt().toString()}°",
                          style:  TextStyle(
                              fontSize: 20.sp, color: Colors.white60),
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
