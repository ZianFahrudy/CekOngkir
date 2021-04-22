// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CostResponse _$_$CostResponseFromJson(Map<String, dynamic> json) {
  return _$CostResponse(
    status: json['status'] == null
        ? null
        : LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : CostResults.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CostResponseToJson(_$CostResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };
