part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getProvinceData() = _GetProvinceData;
  const factory LocationEvent.getCityData({@required String provinceId}) =
      _GetCityData;
}
