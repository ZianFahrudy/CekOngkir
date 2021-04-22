// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResultsData _$_$LocationResultsDataFromJson(
    Map<String, dynamic> json) {
  return _$LocationResultsData(
    provinceId: json['province_id'] as String,
    province: json['province'] as String,
    cityId: json['city_id'] as String,
    type: json['type'] as String,
    cityName: json['city_name'] as String,
    postalCode: json['postal_code'] as String,
  );
}

Map<String, dynamic> _$_$LocationResultsDataToJson(
        _$LocationResultsData instance) =>
    <String, dynamic>{
      'province_id': instance.provinceId,
      'province': instance.province,
      'city_id': instance.cityId,
      'type': instance.type,
      'city_name': instance.cityName,
      'postal_code': instance.postalCode,
    };

_$LocationStatusData _$_$LocationStatusDataFromJson(Map<String, dynamic> json) {
  return _$LocationStatusData(
    code: json['code'] as int,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$LocationStatusDataToJson(
        _$LocationStatusData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
    };
