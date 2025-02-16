import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_text.dart';

import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Weather App", fontSize: 22),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: WeatherInfoBody(),
    );
  }
}
