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
        children: [
          AdditionalInfo(
            icon: (Icons.water_drop),
            label: "Humidity",
            value: "91",
          ),
          AdditionalInfo(icon: (Icons.air), label: "Wind speed", value: "185"),
          AdditionalInfo(
            icon: (Icons.wifi_protected_setup_sharp),
            label: "Pressure",
            value: "300",
          ),
        ],
      ),
    );
  }
}

class AdditionalInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalInfo({
    super.key,
    required this.value,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,

      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            Icon(icon, color: Colors.white, size: 32),

            Text(
              label,

              style: TextStyle(
                fontSize: 16,

                fontWeight: FontWeight((500)),

                color: Colors.white,
              ),
            ),

            Text(
              value,

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
