class WeatherModel {
  final String city;
  final double maxtemp;
  final double mintemp;
  final double temp;
  final DateTime date;
  final String image;
  final String condition;

  WeatherModel({
    required this.city,
    required this.maxtemp,
    required this.mintemp,
    required this.temp,
    required this.date,
    required this.image,
    required this.condition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      city: json["location"]["name"],
      maxtemp: json["forecast"]["forecastday"][0]["maxtemp_c"],
      mintemp: json["forecast"]["forecastday"][0]["mintemp_c"],
      temp: json["forecast"]["forecastday"][0]["avgtemp_c"],
      date: json["current"]["last_updated"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
    );
  }
}
