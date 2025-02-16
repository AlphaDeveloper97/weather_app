import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/custom_text.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        var weatherModel = BlocProvider.of<GetWeatherCubit>(context);

        weatherModel.getWeather(value);
        Navigator.pop(context);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 30, bottom: 30, left: 22),
        label: const CustomText(text: "Search", fontSize: 18),
        labelStyle: const TextStyle(fontSize: 16),
        hintText: "Search",
        hintStyle: const TextStyle(fontSize: 16),
        suffixIcon: const Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
