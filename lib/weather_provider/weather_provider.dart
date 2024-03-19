import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:weather_app/model/Weather_model.dart';
import 'package:weather_app/utils/weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherProvider(this.service);
  WeatherService service;
  WeatherModel? weather;

  Future<void> getWeatherData(context, {required String cityName}) async {
    try {
      weather = await service.getWeather(cityName: cityName);
      Navigator.pop(context);
      notifyListeners();
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            error.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
      );
      log('===================================');
      log(error.toString());
      notifyListeners();
    }
  }
}
