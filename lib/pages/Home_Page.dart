import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Shared%20widgets/No_Weather_details.dart';
import 'package:weather_app/Shared%20widgets/With_Weather_details.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/shared%20widgets/Search_Field.dart';
import 'package:weather_app/shared%20widgets/Weather_failure.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    var getweathercubit = BlocProvider.of<GetWeatherCubit>(context);
    getweathercubit.getWeather(city: "cairo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return const NoWeather();
          } else if (state is WeatherLoadedState) {
            return WithWeatherDetails(
              weatherModel: state.weatherModel,
            );
          } else {
            return const WeatherFailure();
          }
        },
      ),
    );
  }
}
