import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchField extends StatelessWidget {
  SearchField({
    super.key,
  });
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w, top: 3.h),
      child: SizedBox(
        width: 150.w,
        height: 35.h,
        child: TextField(
          controller: controller,
          onSubmitted: (city) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(city: city);
            controller.clear();
          },
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
              label: const Text(''),
              suffixIcon: GestureDetector(
                child: const Icon(Icons.search),
              ),
              suffixIconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.dm),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.dm),
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
