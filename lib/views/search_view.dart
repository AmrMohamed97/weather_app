import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/weather_provider/weather_provider.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amberAccent,
        title: const Text('Search a city '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (cityName) async {
                await context
                    .read<WeatherProvider>()
                    .getWeatherData(context, cityName: cityName);
              },
              // cursorColor: Colors.amberAccent,
              decoration: const InputDecoration(
                label: Text('Search'),
                hintText: 'Enter a city name',
                // labelStyle: TextStyle(color: Colors.amberAccent),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  // borderSide: BorderSide(color: Colors.amberAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  // borderSide: BorderSide(color: Colors.amberAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  // borderSide: BorderSide(color: Colors.amberAccent),
                ),
                // focusColor: Colors.amberAccent,
                // hoverColor: Colors.amberAccent,
                // iconColor: Colors.amberAccent,
                suffixIcon: Icon(Icons.search),
              ),
            )
          ],
        ),
      ),
    );
  }
}
