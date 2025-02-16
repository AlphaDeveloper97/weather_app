import 'package:flutter/material.dart';
import 'package:weather_app/views/models/weather_model.dart';
import 'package:weather_app/widgets/custom_text.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              text: weatherModel.city,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            CustomText(text: "Update ${weatherModel.date}", fontSize: 22),
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
