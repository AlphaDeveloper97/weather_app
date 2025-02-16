import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_cubit.dart';
import 'package:weather_app/helper/theme_color_item.dart';
import 'package:weather_app/views/models/weather_model.dart';
import 'package:weather_app/widgets/custom_text.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    WeatherModel weather =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ThemeColorItem().getThemeColor(weather.condition),
            ThemeColorItem().getThemeColor(weather.condition)[300]!,
            ThemeColorItem().getThemeColor(weather.condition)[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: weatherModel.city,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text:
                  "Update ${weatherModel.date.hour}:${weatherModel.date.minute}",
              fontSize: 22,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weatherModel.image}"),
                CustomText(
                  text: weatherModel.temp.round().toString(),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                Column(
                  children: [
                    CustomText(
                      text:
                          "MaxTemp:${weatherModel.maxtemp.round().toString()}",
                    ),
                    CustomText(
                      text:
                          "MinTemp:${weatherModel.mintemp.round().toString()}",
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            CustomText(
              text: weatherModel.condition,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
