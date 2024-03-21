import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/weather_provider/weather_provider.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

//home_view
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchView()));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: context.watch<WeatherProvider>().weather != null
          ? const WeatherInfoBody()
          : const NoWeatherBody(),
    );
  }
}
