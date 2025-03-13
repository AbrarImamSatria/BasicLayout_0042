import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const WeatherApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        top: true,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      const Text('Weather App', style: TextStyle(fontSize: 20)),
                      IconButton(
                        icon: const Icon(Icons.add_box),
                        onPressed: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Yogyakarta',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const Spacer(flex: 1),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        '28',
                        style: TextStyle(
                          fontSize: 85,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '°C',
                        style: TextStyle(
                          fontSize: 85,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(flex: 1),

                  Container(
                    height: 1,
                    color: Color.fromRGBO(128, 128, 128, 0.3),
                    width: double.infinity,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Sunny',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.ac_unit, color: Colors.blue, size: 20),
                      SizedBox(width: 5),
                      Text(
                        '5 km/h',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ],
                  ),

                  const Spacer(flex: 1),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(128, 128, 128, 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Text(
                            'Next 7 days',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildForecastItem('Now', '28°C', '10 km/h', '0 %'),
                            _buildForecastItem(
                              '17.00',
                              '28°C',
                              '10 km/h',
                              '0 %',
                            ),
                            _buildForecastItem(
                              '20.00',
                              '28°C',
                              '10 km/h',
                              '0 %',
                            ),
                            _buildForecastItem(
                              '23.00',
                              '28°C',
                              '10 km/h',
                              '0 %',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Spacer(flex: 1),

                  const Text(
                    'Developed by: abrarimamsatria.id',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),

                  const SizedBox(height: 5),

                  const SizedBox(height: 10),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildForecastItem(
    String time,
    String temp,
    String wind,
    String precipitation,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(time, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 6),
        const Icon(Icons.ac_unit, color: Colors.blue, size: 18),
        const SizedBox(height: 4),
        Text(temp, style: const TextStyle(fontSize: 14, color: Colors.blue)),
        const SizedBox(height: 6),
        const Icon(Icons.wind_power, color: Colors.red, size: 18),
        const SizedBox(height: 4),
        Text(wind, style: const TextStyle(fontSize: 14, color: Colors.red)),
        const SizedBox(height: 6),
        const Icon(Icons.umbrella, color: Colors.black, size: 18),
        const SizedBox(height: 4),
        Text(precipitation, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
