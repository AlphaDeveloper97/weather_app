import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather%20cubit/get_weather_state.dart';

class GetWeatherCubit extends Cubit {
  GetWeatherCubit() : super(WeatherInaitialState());
}
