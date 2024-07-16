part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getInitalWeather() = GetInitalWeather;
  const factory WeatherEvent.searchWeather(String place) = SearchWeather;

}