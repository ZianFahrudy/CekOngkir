import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_data.freezed.dart';
part 'location_data.g.dart';

@freezed
abstract class LocationData with _$LocationData {
  factory LocationData.locationResultsData({
    @JsonKey(name: "province_id") String provinceId,
    String province,
    @JsonKey(name: "city_id") String cityId,
    String type,
    @JsonKey(name: "city_name") String cityName,
    @JsonKey(name: "postal_code") String postalCode,
  }) = LocationResultsData;

  factory LocationData.locationStatusData({
    int code,
    String description,
  }) = LocationStatusData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}
