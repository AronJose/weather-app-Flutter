// import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/helper/debouncer.dart';
import 'package:weather_app/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/screens/helper_screen.dart/time_formate.dart';
import 'package:weather_app/presentation/screens/sub_widgets/lower_section_container.dart';
import 'package:weather_app/presentation/screens/sub_widgets/sea_level_stack.dart';
import 'package:weather_app/presentation/screens/sub_widgets/sunrise_sunset_column.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Debouncer debouncer = Debouncer(milliseconds: 1000);
  @override
  void initState() {
    context.read<WeatherBloc>().add(const GetInitalWeather());
    super.initState();
  }

// weather animation function
  String getWeatherAnimation(String weather) {
    switch (weather.toLowerCase()) {
      case 'rain':
        return 'assets/animations/weather_animation.json';
      case 'clouds':
        return 'assets/animations/clouds.json';
      default:
        return 'assets/animations/sunny.json';
    }
  }

  bool _isSearching = false;

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
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("${state.error}"),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 57, 180, 241),
                title: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white54),
                  ),
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      debouncer.run(
                        () {
                          context.read<WeatherBloc>().add(SearchWeather(value));
                          print("${value}");
                        },
                      );
                    } else {
                      context.read<WeatherBloc>().add(const GetInitalWeather());
                    }
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      _isSearching ? Icons.close : Icons.search_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {
                      setState(() {
                        _isSearching = !_isSearching;
                      });
                    },
                  ),
                ],
                elevation: 500,
              ),
              body: state.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            color: const Color.fromRGBO(78, 155, 228, 0.416),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  size: 40,
                                  color: Color.fromARGB(255, 138, 0, 0),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${state.data?.name}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 390,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    //baground image
                                    Container(
                                      color: const Color.fromRGBO(
                                          78, 155, 228, 0.416),
                                      height: 260,
                                      width: 500,
                                      child: Lottie.asset(
                                        getWeatherAnimation(
                                            '${state.data?.weather?.first.main}'),
                                        width: 200,
                                        height: 150,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        //temparature and weather showing
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: Text(
                                                // ignore: unnecessary_string_interpolations
                                                '${((state.data?.main?.temp ?? 0) - 273.15).toStringAsFixed(0)}',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 80,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            ),
                                            const Text(
                                              "°c",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 45,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              "${state.data?.weather?.first.main}",
                                              style: const TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 80,
                                        ),
                                        // sunrise and sunset
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SunriseSunsetColumn(
                                              titile:
                                                  "Sunrise: \n${TimeFormate().formatTimestamp(state.data?.sys?.sunrise ?? 0)}",
                                              color: Colors.yellow,
                                            ),
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            SunriseSunsetColumn(
                                              titile:
                                                  "Sunset: \n${TimeFormate().formatTimestamp(state.data?.sys?.sunset ?? 0)}",
                                              color: const Color.fromARGB(
                                                  255, 247, 149, 4),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                //second container it should containing
                                SeaLevelStack(
                                  titile: "Sea level:",
                                  value: "${state.data?.main?.seaLevel}",
                                  imgpath: "assets/images/sealevel.jpeg",
                                ),
                              ],
                            ),
                          ),
                          // last portion it should contain humidity ,pressure,wind speed
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                LowerSectionContainer(
                                    titile: "Humidity",
                                    imgpath: "assets/images/humidity.png",
                                    value: "${state.data?.main?.humidity} %"),
                                LowerSectionContainer(
                                    titile: "Pressure",
                                    imgpath: "assets/images/air-pressure.png",
                                    value: "${state.data?.main?.pressure} hPa"),
                                LowerSectionContainer(
                                    titile: "Wind Speed",
                                    imgpath: "assets/images/wind.png",
                                    value:
                                        "${((state.data?.wind?.speed ?? 0) * 3.6).toStringAsFixed(0)} km/h"),
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
