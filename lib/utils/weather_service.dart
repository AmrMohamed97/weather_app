import 'package:dio/dio.dart';
import 'package:weather_app/model/Weather_model.dart';

//code
class WeatherService {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '04775094248d4e06989213602241703';
  WeatherService(this.dio);
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no');
      WeatherModel weather = WeatherModel.fromJson(response.data);
      return weather;
    } on DioException catch (error) {
      final String message = error.response?.data['error']['message'] ??
          'oops there is an error try later';
      throw Exception(message);
    } catch (error) {
      throw Exception(error);
    }
  }
}
