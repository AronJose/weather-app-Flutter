import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/presentation/constants.dart';

class WeatheService {
  Dio dio = Dio();
  Future<WeatherModel?> getWeather() async {
    try {
    final res= await dio.get(
        "https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {
          "appid": apiKey,
          "lat": "10.01033228740439",
          "lon": "76.36511133375416"
        },
      );
      final WeatherModel weatherModel=WeatherModel.fromJson(res.data);
      return weatherModel;
    } catch (error) {
      print("error");
      //evidunn kittunna error next try catch pass cheyunnu.
      rethrow;
    }
  }
}
