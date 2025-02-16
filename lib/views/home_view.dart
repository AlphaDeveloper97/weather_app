import 'package:flutter/material.dart';
import 'package:weather_app/widgets/not_found_weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App", style: TextStyle(fontSize: 22)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: NotFoundWeather(),
    );
  }
}
