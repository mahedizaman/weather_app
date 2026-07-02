import 'package:flutter/material.dart';

class MiddleContentPage extends StatefulWidget {
  const MiddleContentPage({super.key});

  @override
  State<MiddleContentPage> createState() => _MiddleContentPageState();
}

class _MiddleContentPageState extends State<MiddleContentPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 65, 72, 41),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(.circular(14)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Forecast(
              time: "00.00",
              icon: Icons.cloudy_snowing,
              temp: "302.32K",
            ),
            Forecast(time: "03.00", icon: Icons.cloud_off, temp: "350.87K"),
            Forecast(time: "06,00", icon: Icons.sunny_snowing, temp: "229K.33"),
            Forecast(time: "09.00", icon: Icons.sunny, temp: "299.22K"),
            Forecast(
              time: "12.00",
              icon: Icons.wind_power_rounded,
              temp: "229.95K",
            ),
            Forecast(time: "15.00", icon: Icons.ac_unit_sharp, temp: "259.99K"),
          ],
        ),
      ),
    );
  }
}

class Forecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;
  const Forecast({
    super.key,
    required this.time,
    required this.icon,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: Card(
          color: const Color.fromARGB(255, 76, 89, 68),
          child: Padding(
            padding: const EdgeInsets.all(12.0),

            child: Column(
              children: [
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight((700)),
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4.0),
                Icon(icon, color: Colors.white, size: 32),
                SizedBox(height: 4.0),
                Text(
                  temp,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight(500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
