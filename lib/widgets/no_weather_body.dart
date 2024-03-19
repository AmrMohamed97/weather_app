import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchView()));
              },
              child: const Text(
                'searching now 🔍',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
