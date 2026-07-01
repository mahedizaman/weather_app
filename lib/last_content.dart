import 'package:flutter/material.dart';

class LastContentPage extends StatefulWidget {
  const LastContentPage({super.key});

  @override
  State<LastContentPage> createState() => _LastContentPageState();
}

class _LastContentPageState extends State<LastContentPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [AdditionalInfo(), AdditionalInfo(), AdditionalInfo()],
      ),
    );
  }
}

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,

      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            Icon(Icons.water, color: Colors.white, size: 32),

            Text(
              "Humidity",

              style: TextStyle(
                fontSize: 16,

                fontWeight: FontWeight((500)),

                color: Colors.white,
              ),
            ),

            Text(
              "79",

              style: TextStyle(
                color: Colors.white,

                fontSize: 14,

                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
