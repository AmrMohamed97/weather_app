import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/Weather_model.dart';
import 'package:weather_app/utils/weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? weather;

  Future<void> getWeatherData(context, {required String cityName}) async {
    try {
      weather = await WeatherService(Dio()).getWeather(cityName: cityName);
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
