import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:congkir/domain/location/location_data.dart';

part 'location_req.freezed.dart';
part 'location_req.g.dart';

@freezed
abstract class LocationReq with _$LocationReq {
  factory LocationReq.provinceResponse({
    List<dynamic> query,
    LocationStatusData status,
    List<LocationResultsData> results,
  }) = ProvinceResponse;

  factory LocationReq.cityResponse({
    dynamic query,
    LocationStatusData status,
    List<LocationResultsData> results,
  }) = CityResponse;

  factory LocationReq.fromJson(Map<String, dynamic> json) =>
      _$LocationReqFromJson(json);
}
