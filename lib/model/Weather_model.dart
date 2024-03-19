class WeatherModel {
  final String cityName;
  final DateTime date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final String? image;
  WeatherModel({
    required this.cityName,
    required this.date,
    this.image,
    required this.weatherCondition,
    required this.maxTemp,
    required this.minTemp,
    required this.temp,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
  @override
  String toString() {
    return 'city name: $cityName , date: $date , temprature: $temp';
  }
}
