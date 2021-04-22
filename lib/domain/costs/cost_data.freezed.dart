// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cost_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CostData _$CostDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'costResult':
      return CostResults.fromJson(json);
    case 'costs':
      return Costs.fromJson(json);
    case 'cost':
      return Cost.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$CostDataTearOff {
  const _$CostDataTearOff();

// ignore: unused_element
  CostResults costResult({String code, String name, List<Costs> costs}) {
    return CostResults(
      code: code,
      name: name,
      costs: costs,
    );
  }

// ignore: unused_element
  Costs costs({String service, String description, List<Cost> cost}) {
    return Costs(
      service: service,
      description: description,
      cost: cost,
    );
  }

// ignore: unused_element
  Cost cost({int value, String etd, String note}) {
    return Cost(
      value: value,
      etd: etd,
      note: note,
    );
  }
}

// ignore: unused_element
const $CostData = _$CostDataTearOff();

mixin _$CostData {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result costResult(String code, String name, List<Costs> costs),
    @required Result costs(String service, String description, List<Cost> cost),
    @required Result cost(int value, String etd, String note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResult(String code, String name, List<Costs> costs),
    Result costs(String service, String description, List<Cost> cost),
    Result cost(int value, String etd, String note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResult(CostResults value),
    @required Result costs(Costs value),
    @required Result cost(Cost value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResult(CostResults value),
    Result costs(Costs value),
    Result cost(Cost value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $CostDataCopyWith<$Res> {
  factory $CostDataCopyWith(CostData value, $Res Function(CostData) then) =
      _$CostDataCopyWithImpl<$Res>;
}

class _$CostDataCopyWithImpl<$Res> implements $CostDataCopyWith<$Res> {
  _$CostDataCopyWithImpl(this._value, this._then);

  final CostData _value;
  // ignore: unused_field
  final $Res Function(CostData) _then;
}

abstract class $CostResultsCopyWith<$Res> {
  factory $CostResultsCopyWith(
          CostResults value, $Res Function(CostResults) then) =
      _$CostResultsCopyWithImpl<$Res>;
  $Res call({String code, String name, List<Costs> costs});
}

class _$CostResultsCopyWithImpl<$Res> extends _$CostDataCopyWithImpl<$Res>
    implements $CostResultsCopyWith<$Res> {
  _$CostResultsCopyWithImpl(
      CostResults _value, $Res Function(CostResults) _then)
      : super(_value, (v) => _then(v as CostResults));

  @override
  CostResults get _value => super._value as CostResults;

  @override
  $Res call({
    Object code = freezed,
    Object name = freezed,
    Object costs = freezed,
  }) {
    return _then(CostResults(
      code: code == freezed ? _value.code : code as String,
      name: name == freezed ? _value.name : name as String,
      costs: costs == freezed ? _value.costs : costs as List<Costs>,
    ));
  }
}

@JsonSerializable()
class _$CostResults implements CostResults {
  _$CostResults({this.code, this.name, this.costs});

  factory _$CostResults.fromJson(Map<String, dynamic> json) =>
      _$_$CostResultsFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final List<Costs> costs;

  @override
  String toString() {
    return 'CostData.costResult(code: $code, name: $name, costs: $costs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostResults &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.costs, costs) ||
                const DeepCollectionEquality().equals(other.costs, costs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(costs);

  @override
  $CostResultsCopyWith<CostResults> get copyWith =>
      _$CostResultsCopyWithImpl<CostResults>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result costResult(String code, String name, List<Costs> costs),
    @required Result costs(String service, String description, List<Cost> cost),
    @required Result cost(int value, String etd, String note),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return costResult(code, name, this.costs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResult(String code, String name, List<Costs> costs),
    Result costs(String service, String description, List<Cost> cost),
    Result cost(int value, String etd, String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costResult != null) {
      return costResult(code, name, this.costs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResult(CostResults value),
    @required Result costs(Costs value),
    @required Result cost(Cost value),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return costResult(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResult(CostResults value),
    Result costs(Costs value),
    Result cost(Cost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costResult != null) {
      return costResult(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CostResultsToJson(this)..['runtimeType'] = 'costResult';
  }
}

abstract class CostResults implements CostData {
  factory CostResults({String code, String name, List<Costs> costs}) =
      _$CostResults;

  factory CostResults.fromJson(Map<String, dynamic> json) =
      _$CostResults.fromJson;

  String get code;
  String get name;
  List<Costs> get costs;
  $CostResultsCopyWith<CostResults> get copyWith;
}

abstract class $CostsCopyWith<$Res> {
  factory $CostsCopyWith(Costs value, $Res Function(Costs) then) =
      _$CostsCopyWithImpl<$Res>;
  $Res call({String service, String description, List<Cost> cost});
}

class _$CostsCopyWithImpl<$Res> extends _$CostDataCopyWithImpl<$Res>
    implements $CostsCopyWith<$Res> {
  _$CostsCopyWithImpl(Costs _value, $Res Function(Costs) _then)
      : super(_value, (v) => _then(v as Costs));

  @override
  Costs get _value => super._value as Costs;

  @override
  $Res call({
    Object service = freezed,
    Object description = freezed,
    Object cost = freezed,
  }) {
    return _then(Costs(
      service: service == freezed ? _value.service : service as String,
      description:
          description == freezed ? _value.description : description as String,
      cost: cost == freezed ? _value.cost : cost as List<Cost>,
    ));
  }
}

@JsonSerializable()
class _$Costs implements Costs {
  _$Costs({this.service, this.description, this.cost});

  factory _$Costs.fromJson(Map<String, dynamic> json) =>
      _$_$CostsFromJson(json);

  @override
  final String service;
  @override
  final String description;
  @override
  final List<Cost> cost;

  @override
  String toString() {
    return 'CostData.costs(service: $service, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Costs &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cost);

  @override
  $CostsCopyWith<Costs> get copyWith =>
      _$CostsCopyWithImpl<Costs>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result costResult(String code, String name, List<Costs> costs),
    @required Result costs(String service, String description, List<Cost> cost),
    @required Result cost(int value, String etd, String note),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return costs(service, description, this.cost);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResult(String code, String name, List<Costs> costs),
    Result costs(String service, String description, List<Cost> cost),
    Result cost(int value, String etd, String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costs != null) {
      return costs(service, description, this.cost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResult(CostResults value),
    @required Result costs(Costs value),
    @required Result cost(Cost value),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return costs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResult(CostResults value),
    Result costs(Costs value),
    Result cost(Cost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (costs != null) {
      return costs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CostsToJson(this)..['runtimeType'] = 'costs';
  }
}

abstract class Costs implements CostData {
  factory Costs({String service, String description, List<Cost> cost}) =
      _$Costs;

  factory Costs.fromJson(Map<String, dynamic> json) = _$Costs.fromJson;

  String get service;
  String get description;
  List<Cost> get cost;
  $CostsCopyWith<Costs> get copyWith;
}

abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res>;
  $Res call({int value, String etd, String note});
}

class _$CostCopyWithImpl<$Res> extends _$CostDataCopyWithImpl<$Res>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(Cost _value, $Res Function(Cost) _then)
      : super(_value, (v) => _then(v as Cost));

  @override
  Cost get _value => super._value as Cost;

  @override
  $Res call({
    Object value = freezed,
    Object etd = freezed,
    Object note = freezed,
  }) {
    return _then(Cost(
      value: value == freezed ? _value.value : value as int,
      etd: etd == freezed ? _value.etd : etd as String,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

@JsonSerializable()
class _$Cost implements Cost {
  _$Cost({this.value, this.etd, this.note});

  factory _$Cost.fromJson(Map<String, dynamic> json) => _$_$CostFromJson(json);

  @override
  final int value;
  @override
  final String etd;
  @override
  final String note;

  @override
  String toString() {
    return 'CostData.cost(value: $value, etd: $etd, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Cost &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.etd, etd) ||
                const DeepCollectionEquality().equals(other.etd, etd)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(etd) ^
      const DeepCollectionEquality().hash(note);

  @override
  $CostCopyWith<Cost> get copyWith =>
      _$CostCopyWithImpl<Cost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result costResult(String code, String name, List<Costs> costs),
    @required Result costs(String service, String description, List<Cost> cost),
    @required Result cost(int value, String etd, String note),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return cost(value, etd, note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result costResult(String code, String name, List<Costs> costs),
    Result costs(String service, String description, List<Cost> cost),
    Result cost(int value, String etd, String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cost != null) {
      return cost(value, etd, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result costResult(CostResults value),
    @required Result costs(Costs value),
    @required Result cost(Cost value),
  }) {
    assert(costResult != null);
    assert(costs != null);
    assert(cost != null);
    return cost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result costResult(CostResults value),
    Result costs(Costs value),
    Result cost(Cost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cost != null) {
      return cost(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CostToJson(this)..['runtimeType'] = 'cost';
  }
}

abstract class Cost implements CostData {
  factory Cost({int value, String etd, String note}) = _$Cost;

  factory Cost.fromJson(Map<String, dynamic> json) = _$Cost.fromJson;

  int get value;
  String get etd;
  String get note;
  $CostCopyWith<Cost> get copyWith;
}
