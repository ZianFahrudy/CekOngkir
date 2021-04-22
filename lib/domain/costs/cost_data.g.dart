// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CostResults _$_$CostResultsFromJson(Map<String, dynamic> json) {
  return _$CostResults(
    code: json['code'] as String,
    name: json['name'] as String,
    costs: (json['costs'] as List)
        ?.map(
            (e) => e == null ? null : Costs.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CostResultsToJson(_$CostResults instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'costs': instance.costs,
    };

_$Costs _$_$CostsFromJson(Map<String, dynamic> json) {
  return _$Costs(
    service: json['service'] as String,
    description: json['description'] as String,
    cost: (json['cost'] as List)
        ?.map(
            (e) => e == null ? null : Cost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CostsToJson(_$Costs instance) => <String, dynamic>{
      'service': instance.service,
      'description': instance.description,
      'cost': instance.cost,
    };

_$Cost _$_$CostFromJson(Map<String, dynamic> json) {
  return _$Cost(
    value: json['value'] as int,
    etd: json['etd'] as String,
    note: json['note'] as String,
  );
}

Map<String, dynamic> _$_$CostToJson(_$Cost instance) => <String, dynamic>{
      'value': instance.value,
      'etd': instance.etd,
      'note': instance.note,
    };
