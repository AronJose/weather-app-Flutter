import 'package:flutter/material.dart';

class SeaLevelStack extends StatelessWidget {
  const SeaLevelStack({
    super.key,
    required this.imgpath,
    required this.titile,
    required this.value,
  });
  final String titile;
  final String imgpath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            imgpath,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 120,
              color: const Color.fromARGB(106, 78, 155, 228),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titile,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(value,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "ft",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
