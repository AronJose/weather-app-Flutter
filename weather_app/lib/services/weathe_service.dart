import 'package:dio/dio.dart';
import 'package:weather_app/helper/geolocation_helper.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/presentation/constants.dart';

class WeatheService {
  Dio dio = Dio();
  GeolocationHelper geolocationHelper = GeolocationHelper();

  Future<WeatherModel?> getWeather() async {
    double? lat;
    double? lng;
    try {
      final position = await geolocationHelper.getCurrentlocation();
      if (position != null) {
        lat = position.latitude;
        lng = position.longitude;
      } else {
        throw Exception("permision denied");
      }
      final res = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather",
        queryParameters: {
          "appid": apiKey,
          "lat": lat,
          "lon": lng,
        },
      );
      final WeatherModel weatherModel = WeatherModel.fromJson(res.data);
      return weatherModel;
    } catch (error) {
      print("error");
      //evidunn kittunna error next try catch pass cheyunnu.
      rethrow;
    }
  }
}
