import 'package:flutter/material.dart';
import 'package:weather_app/header_content.dart';
import 'package:weather_app/last_content.dart';
import 'package:weather_app/middle_content.dart';

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
          backgroundColor: const Color.fromARGB(92, 9, 188, 27),
          title: const Text("Weather App"),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 26,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Weather Forecast",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: double.infinity, child: MiddleContentPage()),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Additional Information",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: double.infinity, child: LastContentPage()),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
