import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/presentation/blocs/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/screens/helper_screen.dart/time_formate.dart';

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

//sunset and sunrise calculation

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
                      title: Row(
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
                      elevation: 500,
                    ),
              body: state.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
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
                                      height: 250,
                                      child: Lottie.asset(
                                        'assets/animations/weather_animation.json',
                                        width: 500,
                                        height: 250,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        //temparature and weather showing
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 60),
                                              child: Text(
                                                '${((state.data?.main.temp ?? 0) - 273.15).toStringAsFixed(0)}',
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
                                              "${state.data?.weather.first.main}",
                                              style: const TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 60,
                                        ),
                                        // sunrise and sunset
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Sunset: \n${TimeFormate().formatTimestamp(state.data?.sys.sunset ?? 0)}",
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              238,
                                                              236,
                                                              235),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Icon(
                                                      Icons.wb_sunny,
                                                      color: Color.fromARGB(
                                                          255, 247, 149, 4),
                                                      size: 40,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 60,
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Sunrise: \n${TimeFormate().formatTimestamp(state.data?.sys.sunrise ?? 0)}",
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              243,
                                                              241,
                                                              241),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Icon(
                                                      Icons.wb_sunny,
                                                      color: Colors.yellow,
                                                      size: 40,
                                                    ),
                                                  ],
                                                ),
                                              ],
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
                                Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        "assets/images/sealevel.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          height: 120,
                                          color: const Color.fromARGB(
                                              106, 78, 155, 228),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Sea level:",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                  "${state.data?.main.seaLevel}",
                                                  style: const TextStyle(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w900,
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
                                ),
                              ],
                            ),
                          ),
                          // last portion it should contain humidity ,pressure,wind speed
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  height: 150,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                        child: Image.asset(
                                            "assets/images/humidity.png",
                                            fit: BoxFit.cover),
                                      ),
                                      const Text(
                                        "Humidity",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "${state.data?.main.humidity} %",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  height: 150,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 60,
                                        child: Image.asset(
                                            "assets/images/air-pressure.png",
                                            fit: BoxFit.cover),
                                      ),
                                      const Text(
                                        "Pressure",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "${state.data?.main.pressure} hPa",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 30),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.30,
                                  height: 150,
                                  color:
                                      const Color.fromARGB(48, 116, 239, 243),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 60,
                                        child: Image.asset(
                                            "assets/images/wind.png",
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Wind Speed",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15)),
                                      Text(
                                          "${((state.data?.wind.speed ?? 0) * 3.6).toStringAsFixed(0)} km/h",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ],
                                  ),
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
