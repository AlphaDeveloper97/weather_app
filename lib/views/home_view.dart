import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_state.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/custom_text.dart';
import 'package:weather_app/widgets/not_found_weather.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Weather App", fontSize: 22),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is WeatherLoadedState) {
            return WeatherInfoBody(weatherModel: state.weatherModel);
          } else if (state is WeatherInaitialState) {
            return NotFoundWeather();
          } else {
            return Center(
              child: CustomText(text: "Opps there is an error, try later"),
            );
          }
        },
      ),
    );
  }
}
