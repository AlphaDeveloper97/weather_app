import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_text.dart';

class NotFoundWeather extends StatelessWidget {
  const NotFoundWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(text: "There is no weather 😞 start", fontSize: 27),
          CustomText(text: "searching now 🔍", fontSize: 27),
        ],
      ),
    );
  }
}
