// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitalWeather,
    required TResult Function(String place) searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInitalWeather,
    TResult? Function(String place)? searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitalWeather,
    TResult Function(String place)? searchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInitalWeather value) getInitalWeather,
    required TResult Function(SearchWeather value) searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInitalWeather value)? getInitalWeather,
    TResult? Function(SearchWeather value)? searchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInitalWeather value)? getInitalWeather,
    TResult Function(SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInitalWeatherImplCopyWith<$Res> {
  factory _$$GetInitalWeatherImplCopyWith(_$GetInitalWeatherImpl value,
          $Res Function(_$GetInitalWeatherImpl) then) =
      __$$GetInitalWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInitalWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetInitalWeatherImpl>
    implements _$$GetInitalWeatherImplCopyWith<$Res> {
  __$$GetInitalWeatherImplCopyWithImpl(_$GetInitalWeatherImpl _value,
      $Res Function(_$GetInitalWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetInitalWeatherImpl implements GetInitalWeather {
  const _$GetInitalWeatherImpl();

  @override
  String toString() {
    return 'WeatherEvent.getInitalWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInitalWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitalWeather,
    required TResult Function(String place) searchWeather,
  }) {
    return getInitalWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInitalWeather,
    TResult? Function(String place)? searchWeather,
  }) {
    return getInitalWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitalWeather,
    TResult Function(String place)? searchWeather,
    required TResult orElse(),
  }) {
    if (getInitalWeather != null) {
      return getInitalWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInitalWeather value) getInitalWeather,
    required TResult Function(SearchWeather value) searchWeather,
  }) {
    return getInitalWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInitalWeather value)? getInitalWeather,
    TResult? Function(SearchWeather value)? searchWeather,
  }) {
    return getInitalWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInitalWeather value)? getInitalWeather,
    TResult Function(SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) {
    if (getInitalWeather != null) {
      return getInitalWeather(this);
    }
    return orElse();
  }
}

abstract class GetInitalWeather implements WeatherEvent {
  const factory GetInitalWeather() = _$GetInitalWeatherImpl;
}

/// @nodoc
abstract class _$$SearchWeatherImplCopyWith<$Res> {
  factory _$$SearchWeatherImplCopyWith(
          _$SearchWeatherImpl value, $Res Function(_$SearchWeatherImpl) then) =
      __$$SearchWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String place});
}

/// @nodoc
class __$$SearchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$SearchWeatherImpl>
    implements _$$SearchWeatherImplCopyWith<$Res> {
  __$$SearchWeatherImplCopyWithImpl(
      _$SearchWeatherImpl _value, $Res Function(_$SearchWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$SearchWeatherImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchWeatherImpl implements SearchWeather {
  const _$SearchWeatherImpl(this.place);

  @override
  final String place;

  @override
  String toString() {
    return 'WeatherEvent.searchWeather(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchWeatherImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchWeatherImplCopyWith<_$SearchWeatherImpl> get copyWith =>
      __$$SearchWeatherImplCopyWithImpl<_$SearchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInitalWeather,
    required TResult Function(String place) searchWeather,
  }) {
    return searchWeather(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInitalWeather,
    TResult? Function(String place)? searchWeather,
  }) {
    return searchWeather?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInitalWeather,
    TResult Function(String place)? searchWeather,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInitalWeather value) getInitalWeather,
    required TResult Function(SearchWeather value) searchWeather,
  }) {
    return searchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInitalWeather value)? getInitalWeather,
    TResult? Function(SearchWeather value)? searchWeather,
  }) {
    return searchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInitalWeather value)? getInitalWeather,
    TResult Function(SearchWeather value)? searchWeather,
    required TResult orElse(),
  }) {
    if (searchWeather != null) {
      return searchWeather(this);
    }
    return orElse();
  }
}

abstract class SearchWeather implements WeatherEvent {
  const factory SearchWeather(final String place) = _$SearchWeatherImpl;

  String get place;
  @JsonKey(ignore: true)
  _$$SearchWeatherImplCopyWith<_$SearchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  WeatherModel? get data => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call({WeatherModel? data, bool loading, String? error});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherModel? data, bool loading, String? error});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? loading = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherModel?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.data, required this.loading, required this.error});

  @override
  final WeatherModel? data;
  @override
  final bool loading;
  @override
  final String? error;

  @override
  String toString() {
    return 'WeatherState(data: $data, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WeatherState {
  const factory _Initial(
      {required final WeatherModel? data,
      required final bool loading,
      required final String? error}) = _$InitialImpl;

  @override
  WeatherModel? get data;
  @override
  bool get loading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
