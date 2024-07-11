part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState(
      {required WeatherModel? data,
      required bool loading,
      required String? error}) = _Initial;
  factory WeatherState.initial() =>
      const WeatherState(data: null, loading: true, error: null);
}
