import 'package:flutter/material.dart';
import 'package:weather_app/material_design_weatherapp.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(221, 0, 0, 0),
        appBarTheme: AppBarThemeData(
          backgroundColor: const Color.fromARGB(255, 36, 43, 35),
          foregroundColor: Colors.white,
        ),
      ),
      home: ColoredBox(
        color: (const Color.fromARGB(255, 227, 255, 208)),
        child: WeatherAppMaterialPage(),
      ),
    );
  }
}
