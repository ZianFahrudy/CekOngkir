// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceResponse _$_$ProvinceResponseFromJson(Map<String, dynamic> json) {
  return _$ProvinceResponse(
    query: json['query'] as List,
    status: json['status'] == null
        ? null
        : LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : LocationResultsData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$ProvinceResponseToJson(_$ProvinceResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
    };

_$CityResponse _$_$CityResponseFromJson(Map<String, dynamic> json) {
  return _$CityResponse(
    query: json['query'],
    status: json['status'] == null
        ? null
        : LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : LocationResultsData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$CityResponseToJson(_$CityResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
    };
