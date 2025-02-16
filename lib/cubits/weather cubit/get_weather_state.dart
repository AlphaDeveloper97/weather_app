import 'package:weather_app/views/models/weather_model.dart';

class GetWeatherState {}

class WeatherInaitialState extends GetWeatherState {}

class WeatherLoadedState extends GetWeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends GetWeatherState {
  final String errMessage;

  WeatherFailureState(this.errMessage);
}
