import 'package:flutter/material.dart';

class SunriseSunsetColumn extends StatelessWidget {
  const SunriseSunsetColumn({
    super.key,
    required this.titile,
    required this.color,
  });
  final String titile;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              titile,
              style: const TextStyle(
                  color: Color.fromARGB(255, 253, 253, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                  
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.wb_sunny,
              color: color,
              size: 40,
            ),
          ],
        ),
      ],
    );
  }
}
