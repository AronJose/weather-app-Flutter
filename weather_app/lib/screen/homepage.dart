import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 47, 52, 54),
              Color.fromARGB(255, 212, 212, 212),
              Color.fromARGB(255, 87, 180, 238),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Scaffold(
          backgroundColor:
              Colors.transparent, // Set Scaffold background to transparent
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 137, 166, 180),
            title: const Text(
              "Kochi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  // Handle icon button press
                },
              ),
            ],
            leading: Icon(
              Icons.location_pin,
              size: 40,
              color: Color.fromARGB(255, 138, 0, 0),
            ),
            elevation: 500,
          ),
          body: Column(
            children: [GridView.builder(gridDelegate: ,)],
          ),
        ),
      ),
    );
  }
}
