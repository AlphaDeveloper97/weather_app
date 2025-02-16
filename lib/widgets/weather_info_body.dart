import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_text.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomText(
              text: "Cairo",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            const CustomText(text: "Update 2:30", fontSize: 22),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://cdn.weatherapi.com/weather/64x64/night/143.png",
                ),
                const CustomText(
                  text: "7",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                const Column(
                  children: [
                    CustomText(text: "MaxTemp:27"),
                    CustomText(text: "MinTemp:27"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            const CustomText(
              text: "Sunny",
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
