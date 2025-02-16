import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_state.dart';
import 'package:weather_app/helper/theme_color_item.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder:
            (context) => BlocBuilder<GetWeatherCubit, GetWeatherState>(
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: ThemeColorItem().getThemeColor(
                      BlocProvider.of<GetWeatherCubit>(
                        context,
                      ).weatherModel?.condition,
                    ),
                  ),
                  home: HomeView(),
                );
              },
            ),
      ),
    );
  }
}
