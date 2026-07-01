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
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(.circular(14)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Forecast(),
            Forecast(),
            Forecast(),
            Forecast(),
            Forecast(),
            Forecast(),
          ],
        ),
      ),
    );
  }
}

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Container(
        margin: EdgeInsets.all(8),
        child: Card(
          color: const Color.fromARGB(255, 255, 210, 48),
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
              children: [
                Text(
                  "3.00",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.cloud, color: Colors.white, size: 32),
                Text(
                  "301",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
