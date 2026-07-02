import 'dart:ui';

import 'package:flutter/material.dart';

class HeaderContent extends StatefulWidget {
  const HeaderContent({super.key});

  @override
  State<HeaderContent> createState() => _HeaderContentState();
}

class _HeaderContentState extends State<HeaderContent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 65, 72, 41),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(.circular(20)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                Text(
                  "300K",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Icon(Icons.cloud, color: Colors.white, size: 60),
                SizedBox(height: 10),
                Text(
                  "Rain",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
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
