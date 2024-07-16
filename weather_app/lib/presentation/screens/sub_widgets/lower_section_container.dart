import 'package:flutter/material.dart';

class LowerSectionContainer extends StatelessWidget {
  const LowerSectionContainer({
    super.key,
    required this.titile,
    required this.imgpath,
    required this.value,
  });
  final String titile;
  final String imgpath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: MediaQuery.sizeOf(context).width * 0.30,
      height: 150,
      color: const Color.fromARGB(48, 116, 239, 243),
      child: Column(
        children: [
          SizedBox(
            width: 70,
            height: 60,
            child: Image.asset(imgpath, fit: BoxFit.fill),
          ),
          Text(
            titile,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
