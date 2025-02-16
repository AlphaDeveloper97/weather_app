import 'package:flutter/material.dart';

class ThemeColorItem {
  MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    condition =
        condition
            .toLowerCase(); // Normalize condition to lowercase for matching
    if (condition == "sunny" || condition == "clear") {
      return Colors.orange;
    } else if (condition.contains("cloudy")) {
      return Colors.blueGrey;
    } else if (condition.contains("rain") ||
        condition.contains("ice pellets")) {
      return Colors.blue;
    } else if (condition.contains("snow") || condition.contains("drizzle")) {
      return Colors.lightBlue;
    } else if (condition.contains("sleet")) {
      return Colors.indigo;
    } else if (condition.contains("freezing")) {
      return Colors.cyan;
    } else if (condition.contains("thunder")) {
      return Colors.deepPurple;
    } else if (condition.contains("fog") || condition.contains("mist")) {
      return Colors.teal;
    } else if (condition == "overcast" || condition.contains("blizzard")) {
      return Colors.grey;
    } else {
      // Default MaterialColor for unknown conditions
      return Colors.blue;
    }
  }
}
