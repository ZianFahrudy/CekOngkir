// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cost_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CostStateTearOff {
  const _$CostStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _CostDataOptions costDataOption(
      {@required bool onLoading,
      @required Option<Either<LocationFailure, CostResponse>> dataCost}) {
    return _CostDataOptions(
      onLoading: onLoading,
      dataCost: dataCost,
    );
  }
}

// ignore: unused_element
const $CostState = _$CostStateTearOff();

mixin _$CostState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result costDataOption(bool onLoading,
            Option<Either<LocationFailure, CostResponse>> dataCost),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result costDataOption(
        bool onLoading, Option<Either<LocationFailure, CostResponse>> dataCost),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result costDataOption(_CostDataOptions value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result costDataOption(_CostDataOptions value),
    @required Result orElse(),
  });
}

abstract class $CostStateCopyWith<$Res> {
  factory $CostStateCopyWith(CostState value, $Res Function(CostState) then) =
      _$CostStateCopyWithImpl<$Res>;
}

class _$CostStateCopyWithImpl<$Res> implements $CostStateCopyWith<$Res> {
  _$CostStateCopyWithImpl(this._value, this._then);

  final CostState _value;
  // ignore: unused_field
  final $Res Function(CostState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CostStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result costDataOption(bool onLoading,
            Option<Either<LocationFailure, CostResponse>> dataCost),
  }) {
    assert(initial != null);
    assert(costDataOption != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result costDataOption(
        bool onLoading, Option<Either<LocationFailure, CostResponse>> dataCost),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result costDataOption(_CostDataOptions value),
  }) {
    assert(initial != null);
    assert(costDataOption != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result costDataOption(_CostDataOptions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CostState {
  const factory _Initial() = _$_Initial;
}

abstract class _$CostDataOptionsCopyWith<$Res> {
  factory _$CostDataOptionsCopyWith(
          _CostDataOptions value, $Res Function(_CostDataOptions) then) =
      __$CostDataOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading, Option<Either<LocationFailure, CostResponse>> dataCost});
}

class __$CostDataOptionsCopyWithImpl<$Res> extends _$CostStateCopyWithImpl<$Res>
    implements _$CostDataOptionsCopyWith<$Res> {
  __$CostDataOptionsCopyWithImpl(
      _CostDataOptions _value, $Res Function(_CostDataOptions) _then)
      : super(_value, (v) => _then(v as _CostDataOptions));

  @override
  _CostDataOptions get _value => super._value as _CostDataOptions;

  @override
  $Res call({
    Object onLoading = freezed,
    Object dataCost = freezed,
  }) {
    return _then(_CostDataOptions(
      onLoading: onLoading == freezed ? _value.onLoading : onLoading as bool,
      dataCost: dataCost == freezed
          ? _value.dataCost
          : dataCost as Option<Either<LocationFailure, CostResponse>>,
    ));
  }
}

class _$_CostDataOptions implements _CostDataOptions {
  const _$_CostDataOptions({@required this.onLoading, @required this.dataCost})
      : assert(onLoading != null),
        assert(dataCost != null);

  @override
  final bool onLoading;
  @override
  final Option<Either<LocationFailure, CostResponse>> dataCost;

  @override
  String toString() {
    return 'CostState.costDataOption(onLoading: $onLoading, dataCost: $dataCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CostDataOptions &&
            (identical(other.onLoading, onLoading) ||
                const DeepCollectionEquality()
                    .equals(other.onLoading, onLoading)) &&
            (identical(other.dataCost, dataCost) ||
                const DeepCollectionEquality()
                    .equals(other.dataCost, dataCost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(onLoading) ^
      const DeepCollectionEquality().hash(dataCost);

  @override
  _$CostDataOptionsCopyWith<_CostDataOptions> get copyWith =>
      __$CostDataOptionsCopyWithImpl<_CostDataOptions>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result costDataOption(bool onLoading,
            Option<Either<LocationFailure, CostResponse>> dataCost),
  }) {
    assert(initial != null);
    assert(costDataOption != null);
    return costDataOption(onLoading, dataCost);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result costDataOption(
        bool onLoading, Option<Either<LocationFailure, CostResponse>> dataCost),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costDataOption != null) {
      return costDataOption(onLoading, dataCost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result costDataOption(_CostDataOptions value),
  }) {
    assert(initial != null);
    assert(costDataOption != null);
    return costDataOption(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result costDataOption(_CostDataOptions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costDataOption != null) {
      return costDataOption(this);
    }
    return orElse();
  }
}

abstract class _CostDataOptions implements CostState {
  const factory _CostDataOptions(
          {@required bool onLoading,
          @required Option<Either<LocationFailure, CostResponse>> dataCost}) =
      _$_CostDataOptions;

  bool get onLoading;
  Option<Either<LocationFailure, CostResponse>> get dataCost;
  _$CostDataOptionsCopyWith<_CostDataOptions> get copyWith;
}
