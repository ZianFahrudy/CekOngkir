// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cost_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CostReq _$CostReqFromJson(Map<String, dynamic> json) {
  return CostResponse.fromJson(json);
}

class _$CostReqTearOff {
  const _$CostReqTearOff();

// ignore: unused_element
  CostResponse costResponse(
      {LocationStatusData status, List<CostResults> results}) {
    return CostResponse(
      status: status,
      results: results,
    );
  }
}

// ignore: unused_element
const $CostReq = _$CostReqTearOff();

mixin _$CostReq {
  LocationStatusData get status;
  List<CostResults> get results;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result costResponse(
            LocationStatusData status, List<CostResults> results),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResponse(LocationStatusData status, List<CostResults> results),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResponse(CostResponse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResponse(CostResponse value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $CostReqCopyWith<CostReq> get copyWith;
}

abstract class $CostReqCopyWith<$Res> {
  factory $CostReqCopyWith(CostReq value, $Res Function(CostReq) then) =
      _$CostReqCopyWithImpl<$Res>;
  $Res call({LocationStatusData status, List<CostResults> results});
}

class _$CostReqCopyWithImpl<$Res> implements $CostReqCopyWith<$Res> {
  _$CostReqCopyWithImpl(this._value, this._then);

  final CostReq _value;
  // ignore: unused_field
  final $Res Function(CostReq) _then;

  @override
  $Res call({
    Object status = freezed,
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LocationStatusData,
      results:
          results == freezed ? _value.results : results as List<CostResults>,
    ));
  }
}

abstract class $CostResponseCopyWith<$Res> implements $CostReqCopyWith<$Res> {
  factory $CostResponseCopyWith(
          CostResponse value, $Res Function(CostResponse) then) =
      _$CostResponseCopyWithImpl<$Res>;
  @override
  $Res call({LocationStatusData status, List<CostResults> results});
}

class _$CostResponseCopyWithImpl<$Res> extends _$CostReqCopyWithImpl<$Res>
    implements $CostResponseCopyWith<$Res> {
  _$CostResponseCopyWithImpl(
      CostResponse _value, $Res Function(CostResponse) _then)
      : super(_value, (v) => _then(v as CostResponse));

  @override
  CostResponse get _value => super._value as CostResponse;

  @override
  $Res call({
    Object status = freezed,
    Object results = freezed,
  }) {
    return _then(CostResponse(
      status: status == freezed ? _value.status : status as LocationStatusData,
      results:
          results == freezed ? _value.results : results as List<CostResults>,
    ));
  }
}

@JsonSerializable()
class _$CostResponse implements CostResponse {
  _$CostResponse({this.status, this.results});

  factory _$CostResponse.fromJson(Map<String, dynamic> json) =>
      _$_$CostResponseFromJson(json);

  @override
  final LocationStatusData status;
  @override
  final List<CostResults> results;

  @override
  String toString() {
    return 'CostReq.costResponse(status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results);

  @override
  $CostResponseCopyWith<CostResponse> get copyWith =>
      _$CostResponseCopyWithImpl<CostResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result costResponse(
            LocationStatusData status, List<CostResults> results),
  }) {
    assert(costResponse != null);
    return costResponse(status, results);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResponse(LocationStatusData status, List<CostResults> results),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costResponse != null) {
      return costResponse(status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResponse(CostResponse value),
  }) {
    assert(costResponse != null);
    return costResponse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResponse(CostResponse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costResponse != null) {
      return costResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CostResponseToJson(this);
  }
}

abstract class CostResponse implements CostReq {
  factory CostResponse({LocationStatusData status, List<CostResults> results}) =
      _$CostResponse;

  factory CostResponse.fromJson(Map<String, dynamic> json) =
      _$CostResponse.fromJson;

  @override
  LocationStatusData get status;
  @override
  List<CostResults> get results;
  @override
  $CostResponseCopyWith<CostResponse> get copyWith;
}
