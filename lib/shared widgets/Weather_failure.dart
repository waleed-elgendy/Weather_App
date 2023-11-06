import 'package:flutter/material.dart';
import 'package:weather_app/shared%20widgets/Search_Field.dart';

class WeatherFailure extends StatelessWidget {
  const WeatherFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0B0C1E),
        actions: [
          SearchField(),
        ],
      ),
      body: Container(
        color: const Color(0xff0B0C1E),
        child: const Center(
          child: Text(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32,color: Colors.white),
              "oops there was an error, try later"),
        ),
      ),
    );
  }
}
