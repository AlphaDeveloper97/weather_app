import 'package:flutter/material.dart';

class NotFoundWeather extends StatelessWidget {
  const NotFoundWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("There is no weather 😞 start", style: TextStyle(fontSize: 27)),
          Text("Searching now 🔍", style: TextStyle(fontSize: 27)),
        ],
      ),
    );
  }
}
