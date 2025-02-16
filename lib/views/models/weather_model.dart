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
      city: json[""],
      maxtemp: json[""],
      mintemp: json[""],
      temp: json[""],
      date: json[""],
      image: json[""],
      condition: json[""],
    );
  }
}
