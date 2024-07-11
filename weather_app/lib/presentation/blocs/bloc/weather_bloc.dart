import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weathe_service.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  //api server call instance create cheyth.
  final WeatheService weatheService = WeatheService();
  // initial change to state kidakkunna initail ingott edukkuka.
  WeatherBloc() : super(WeatherState.initial()) {
    //event akath ulla event name ingitt edukkuka event ennam koodunnathinn anusarich on ennam koodum.
    on<GetInitalWeather>((event, emit) async {
      try {
        final data = await weatheService.getWeather();
        print("${data?.name}");
        emit(state.copyWith(data: data, loading: false, error: null));
      } catch (e) {
        emit(state.copyWith(data: null,loading: false,error: e.toString()));
        print("error");
      }
    });
  }
}
