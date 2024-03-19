import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/weather_provider/weather_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WeatherProvider(),
        child: Consumer(builder: (context, provider, _) {
          return MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: colorCustom(
                    context.watch<WeatherProvider>().weather?.weatherCondition),
              ),
              primarySwatch: colorCustom(
                  context.watch<WeatherProvider>().weather?.weatherCondition),
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        }));
  }
}

MaterialColor colorCustom(condition) {
  if (condition == 'Sunny') {
    return Colors.yellow;
  } else if (condition == "Partly cloudy") {
    return Colors.brown;
  } else if (condition == "Cloudy") {
    return Colors.deepOrange;
  } else if (condition == "Overcast") {
    return Colors.lime;
  } else if (condition == 'Mist') {
    return Colors.brown;
  } else if (condition == 'Patchy rain possible') {
    return Colors.cyan;
  } else if (condition == 'Patchy snow possible') {
    return Colors.lightGreen;
  } else if (condition == 'Patchy sleet possible') {
    return Colors.blue;
  } else if (condition == 'Patchy freezing drizzle possible') {
    return Colors.indigo;
  } else if (condition == 'Thundery outbreaks possible') {
    return Colors.lightBlue;
  } else if (condition == 'Blowing snow') {
    return Colors.lightBlue;
  } else if (condition == 'Blizzard') {
    return Colors.blue;
  } else if (condition == 'Fog') {
    return Colors.blue;
  } else if (condition == 'Freezing fog') {
    return Colors.blue;
  } else if (condition == 'Patchy light drizzle') {
    return Colors.blue;
  } else if (condition == 'Light drizzle') {
    return Colors.blue;
  } else if (condition == 'Freezing drizzle') {
    return Colors.deepPurple;
  } else if (condition == 'Heavy freezing drizzle') {
    return Colors.blue;
  } else if (condition == 'Patchy light rain') {
    return Colors.blue;
  } else if (condition == 'Light rain') {
    return Colors.blue;
  } else if (condition == 'Moderate rain at times') {
    return Colors.blue;
  } else if (condition == 'Moderate rain') {
    return Colors.blue;
  } else if (condition == 'Heavy rain at times') {
    return Colors.blue;
  } else if (condition == 'Heavy rain') {
    return Colors.blue;
  } else if (condition == 'Light freezing rain') {
    return Colors.blue;
  } else if (condition == 'Moderate or heavy freezing rain') {
    return Colors.blue;
  } else if (condition == 'Light sleet') {
    return Colors.blue;
  } else if (condition == 'Moderate or heavy sleet') {
    return Colors.blue;
  } else if (condition == 'Patchy light snow') {
    return Colors.blue;
  } else if (condition == 'Light snow') {
    return Colors.blue;
  } else if (condition == 'Patchy moderate snow') {
    return Colors.blue;
  } else if (condition == 'Moderate snow') {
    return Colors.blue;
  } else if (condition == 'Patchy heavy snow') {
    return Colors.blue;
  } else if (condition == 'Heavy snow') {
    return Colors.blue;
  } else if (condition == 'Ice pellets') {
    return Colors.pink;
  } else if (condition == 'Light rain shower') {
    return Colors.blueGrey;
  } else if (condition == 'Moderate or heavy rain shower') {
    return Colors.grey;
  } else if (condition == 'Torrential rain shower') {
    return Colors.deepOrange;
  } else if (condition == 'Light sleet showers') {
    return Colors.orange;
  } else if (condition == 'Moderate or heavy sleet showers') {
    return Colors.amber;
  } else if (condition == 'Light snow showers') {
    return Colors.lime;
  } else if (condition == 'Moderate or heavy snow showers') {
    return Colors.green;
  } else if (condition == 'Light showers of ice pellets') {
    return Colors.teal;
  } else if (condition == 'Moderate or heavy showers of ice pellets') {
    return Colors.cyan;
  } else if (condition == 'Patchy light rain with thunder') {
    return Colors.indigo;
  } else if (condition == 'Moderate or heavy rain with thunder') {
    return Colors.purple;
  } else if (condition == 'Patchy light snow with thunder') {
    return Colors.deepPurple;
  } else if (condition == 'Moderate or heavy snow with thunder') {
    return Colors.pink;
  } else {
    return Colors.blue;
  }
}
