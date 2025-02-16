import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_state.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/views/models/weather_model.dart';

class GetWeatherCubit extends Cubit {
  GetWeatherCubit() : super(WeatherInaitialState());

  WeatherModel? weatherModel;

  getWeather(String city) {
    try {
      weatherModel = WeatherService(Dio()).getweatherservice(city);
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
