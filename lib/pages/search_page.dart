import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 130.w, vertical: 100.h),
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
            label: const Text('search'),
            suffixIcon: GestureDetector(
              child: const Icon(Icons.search),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.dm),
              ),
            ),
            hintText: 'Enter a city',
          ),
        ),
      ),
    );
  }
}
