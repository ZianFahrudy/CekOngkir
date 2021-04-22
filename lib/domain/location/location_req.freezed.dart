// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationReq _$LocationReqFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'provinceResponse':
      return ProvinceResponse.fromJson(json);
    case 'cityResponse':
      return CityResponse.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$LocationReqTearOff {
  const _$LocationReqTearOff();

// ignore: unused_element
  ProvinceResponse provinceResponse(
      {List<dynamic> query,
      LocationStatusData status,
      List<LocationResultsData> results}) {
    return ProvinceResponse(
      query: query,
      status: status,
      results: results,
    );
  }

// ignore: unused_element
  CityResponse cityResponse(
      {dynamic query,
      LocationStatusData status,
      List<LocationResultsData> results}) {
    return CityResponse(
      query: query,
      status: status,
      results: results,
    );
  }
}

// ignore: unused_element
const $LocationReq = _$LocationReqTearOff();

mixin _$LocationReq {
  LocationStatusData get status;
  List<LocationResultsData> get results;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result provinceResponse(List<dynamic> query, LocationStatusData status,
            List<LocationResultsData> results),
    @required
        Result cityResponse(dynamic query, LocationStatusData status,
            List<LocationResultsData> results),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result provinceResponse(List<dynamic> query, LocationStatusData status,
        List<LocationResultsData> results),
    Result cityResponse(dynamic query, LocationStatusData status,
        List<LocationResultsData> results),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result provinceResponse(ProvinceResponse value),
    @required Result cityResponse(CityResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result provinceResponse(ProvinceResponse value),
    Result cityResponse(CityResponse value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $LocationReqCopyWith<LocationReq> get copyWith;
}

abstract class $LocationReqCopyWith<$Res> {
  factory $LocationReqCopyWith(
          LocationReq value, $Res Function(LocationReq) then) =
      _$LocationReqCopyWithImpl<$Res>;
  $Res call({LocationStatusData status, List<LocationResultsData> results});
}

class _$LocationReqCopyWithImpl<$Res> implements $LocationReqCopyWith<$Res> {
  _$LocationReqCopyWithImpl(this._value, this._then);

  final LocationReq _value;
  // ignore: unused_field
  final $Res Function(LocationReq) _then;

  @override
  $Res call({
    Object status = freezed,
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LocationStatusData,
      results: results == freezed
          ? _value.results
          : results as List<LocationResultsData>,
    ));
  }
}

abstract class $ProvinceResponseCopyWith<$Res>
    implements $LocationReqCopyWith<$Res> {
  factory $ProvinceResponseCopyWith(
          ProvinceResponse value, $Res Function(ProvinceResponse) then) =
      _$ProvinceResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> query,
      LocationStatusData status,
      List<LocationResultsData> results});
}

class _$ProvinceResponseCopyWithImpl<$Res>
    extends _$LocationReqCopyWithImpl<$Res>
    implements $ProvinceResponseCopyWith<$Res> {
  _$ProvinceResponseCopyWithImpl(
      ProvinceResponse _value, $Res Function(ProvinceResponse) _then)
      : super(_value, (v) => _then(v as ProvinceResponse));

  @override
  ProvinceResponse get _value => super._value as ProvinceResponse;

  @override
  $Res call({
    Object query = freezed,
    Object status = freezed,
    Object results = freezed,
  }) {
    return _then(ProvinceResponse(
      query: query == freezed ? _value.query : query as List<dynamic>,
      status: status == freezed ? _value.status : status as LocationStatusData,
      results: results == freezed
          ? _value.results
          : results as List<LocationResultsData>,
    ));
  }
}

@JsonSerializable()
class _$ProvinceResponse implements ProvinceResponse {
  _$ProvinceResponse({this.query, this.status, this.results});

  factory _$ProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$ProvinceResponseFromJson(json);

  @override
  final List<dynamic> query;
  @override
  final LocationStatusData status;
  @override
  final List<LocationResultsData> results;

  @override
  String toString() {
    return 'LocationReq.provinceResponse(query: $query, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProvinceResponse &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results);

  @override
  $ProvinceResponseCopyWith<ProvinceResponse> get copyWith =>
      _$ProvinceResponseCopyWithImpl<ProvinceResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result provinceResponse(List<dynamic> query, LocationStatusData status,
            List<LocationResultsData> results),
    @required
        Result cityResponse(dynamic query, LocationStatusData status,
            List<LocationResultsData> results),
  }) {
    assert(provinceResponse != null);
    assert(cityResponse != null);
    return provinceResponse(query, status, results);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result provinceResponse(List<dynamic> query, LocationStatusData status,
        List<LocationResultsData> results),
    Result cityResponse(dynamic query, LocationStatusData status,
        List<LocationResultsData> results),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provinceResponse != null) {
      return provinceResponse(query, status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result provinceResponse(ProvinceResponse value),
    @required Result cityResponse(CityResponse value),
  }) {
    assert(provinceResponse != null);
    assert(cityResponse != null);
    return provinceResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result provinceResponse(ProvinceResponse value),
    Result cityResponse(CityResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provinceResponse != null) {
      return provinceResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ProvinceResponseToJson(this)
      ..['runtimeType'] = 'provinceResponse';
  }
}

abstract class ProvinceResponse implements LocationReq {
  factory ProvinceResponse(
      {List<dynamic> query,
      LocationStatusData status,
      List<LocationResultsData> results}) = _$ProvinceResponse;

  factory ProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$ProvinceResponse.fromJson;

  List<dynamic> get query;
  @override
  LocationStatusData get status;
  @override
  List<LocationResultsData> get results;
  @override
  $ProvinceResponseCopyWith<ProvinceResponse> get copyWith;
}

abstract class $CityResponseCopyWith<$Res>
    implements $LocationReqCopyWith<$Res> {
  factory $CityResponseCopyWith(
          CityResponse value, $Res Function(CityResponse) then) =
      _$CityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic query,
      LocationStatusData status,
      List<LocationResultsData> results});
}

class _$CityResponseCopyWithImpl<$Res> extends _$LocationReqCopyWithImpl<$Res>
    implements $CityResponseCopyWith<$Res> {
  _$CityResponseCopyWithImpl(
      CityResponse _value, $Res Function(CityResponse) _then)
      : super(_value, (v) => _then(v as CityResponse));

  @override
  CityResponse get _value => super._value as CityResponse;

  @override
  $Res call({
    Object query = freezed,
    Object status = freezed,
    Object results = freezed,
  }) {
    return _then(CityResponse(
      query: query == freezed ? _value.query : query as dynamic,
      status: status == freezed ? _value.status : status as LocationStatusData,
      results: results == freezed
          ? _value.results
          : results as List<LocationResultsData>,
    ));
  }
}

@JsonSerializable()
class _$CityResponse implements CityResponse {
  _$CityResponse({this.query, this.status, this.results});

  factory _$CityResponse.fromJson(Map<String, dynamic> json) =>
      _$_$CityResponseFromJson(json);

  @override
  final dynamic query;
  @override
  final LocationStatusData status;
  @override
  final List<LocationResultsData> results;

  @override
  String toString() {
    return 'LocationReq.cityResponse(query: $query, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityResponse &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results);

  @override
  $CityResponseCopyWith<CityResponse> get copyWith =>
      _$CityResponseCopyWithImpl<CityResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result provinceResponse(List<dynamic> query, LocationStatusData status,
            List<LocationResultsData> results),
    @required
        Result cityResponse(dynamic query, LocationStatusData status,
            List<LocationResultsData> results),
  }) {
    assert(provinceResponse != null);
    assert(cityResponse != null);
    return cityResponse(query, status, results);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result provinceResponse(List<dynamic> query, LocationStatusData status,
        List<LocationResultsData> results),
    Result cityResponse(dynamic query, LocationStatusData status,
        List<LocationResultsData> results),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityResponse != null) {
      return cityResponse(query, status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result provinceResponse(ProvinceResponse value),
    @required Result cityResponse(CityResponse value),
  }) {
    assert(provinceResponse != null);
    assert(cityResponse != null);
    return cityResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result provinceResponse(ProvinceResponse value),
    Result cityResponse(CityResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityResponse != null) {
      return cityResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CityResponseToJson(this)..['runtimeType'] = 'cityResponse';
  }
}

abstract class CityResponse implements LocationReq {
  factory CityResponse(
      {dynamic query,
      LocationStatusData status,
      List<LocationResultsData> results}) = _$CityResponse;

  factory CityResponse.fromJson(Map<String, dynamic> json) =
      _$CityResponse.fromJson;

  dynamic get query;
  @override
  LocationStatusData get status;
  @override
  List<LocationResultsData> get results;
  @override
  $CityResponseCopyWith<CityResponse> get copyWith;
}
