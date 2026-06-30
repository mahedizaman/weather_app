import 'package:flutter/material.dart';
import 'package:weather_app/header_content.dart';

class WeatherAppMaterialPage extends StatefulWidget {
  const WeatherAppMaterialPage({super.key});

  @override
  State<WeatherAppMaterialPage> createState() => _WeatherAppMaterialPageState();
}

class _WeatherAppMaterialPageState extends State<WeatherAppMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Weather App"),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            letterSpacing: 3,
            fontWeight: FontWeight(500),
            color: Color.fromARGB(255, 234, 242, 234),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4),
              child: IconButton(
                onPressed: () {
                  print("clicked");
                },
                icon: InkWell(child: Icon(Icons.refresh)),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(width: double.infinity, child: HeaderContent()),
              SizedBox(height: 20),
              Placeholder(fallbackHeight: 180),
              SizedBox(height: 20),
              Placeholder(fallbackHeight: 180),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
