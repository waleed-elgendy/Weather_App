import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
class SearchField extends StatelessWidget {
   SearchField({
    super.key,
  });
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 3),
      child: SizedBox(
        width: 150,
        height: 35,
        child: TextField(
          controller: controller,
          onSubmitted: (city) async {
         var getWeatherCubit =  BlocProvider.of<GetWeatherCubit>(context);
         getWeatherCubit.getWeather(city: city);
         controller.clear();
         },
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 14),
              label: const Text(''),
              suffixIcon: GestureDetector(
                child: const Icon(Icons.search),
              ),
              suffixIconColor: Colors.white,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              enabledBorder: InputBorder.none,
              hintText: 'Enter city',
              hintStyle: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}