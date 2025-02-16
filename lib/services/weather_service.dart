import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/views/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);

  final String basUrl = "http://api.weatherapi.com/v1";
  final String apikey = "5c8ad8994abc4aeb90062029250601";

  Future<WeatherModel> getweatherservice(String city) async {
    try {
      Response response = await dio.get(
        "http://api.weatherapi.com/v1/forecast.json?key=5c8ad8994abc4aeb90062029250601&q=$city&days=1",
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data["error"]["message"] ??
          "Opps there is an error, try later";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("Opps there is an error, try later");
    }
  }
}
