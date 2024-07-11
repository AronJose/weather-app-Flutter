import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/presentation/blocs/bloc/weather_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    context.read<WeatherBloc>().add(const GetInitalWeather());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 159, 219),
              Color.fromARGB(255, 162, 199, 255),
              Color.fromARGB(255, 17, 60, 248),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: state.loading
                  ? null
                  : AppBar(
                      backgroundColor: const Color.fromARGB(255, 57, 180, 241),
                      title: Text(
                        "${state.data?.name}",
                        style: const TextStyle(
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
                          onPressed: () {},
                        ),
                      ],
                      leading: const Icon(
                        Icons.location_pin,
                        size: 40,
                        color: Color.fromARGB(255, 138, 0, 0),
                      ),
                      elevation: 500,
                    ),
              body: state.loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      color:
                                          Color.fromRGBO(78, 155, 228, 0.416),
                                      height: 250,
                                      child: Lottie.asset(
                                        'assets/animations/weather_animation.json',
                                        width: 500,
                                        height: 250,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      top: 20,
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Text(
                                              '${((state.data?.main.temp ?? 0) - 273.15).toStringAsFixed(0)}',
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 80,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            const Text(
                                              "°c",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 45,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "${state.data?.weather.first.main}",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 120,
                                  color:
                                      const Color.fromARGB(106, 78, 155, 228),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
