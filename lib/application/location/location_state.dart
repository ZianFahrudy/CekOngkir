part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.provinceDataOptions({
    @required bool onLoading,
    @required Option<Either<LocationFailure, ProvinceResponse>> dataProvince,
  }) = _ProvinceDataOptions;

  const factory LocationState.cityDataOptions({
    @required bool onLoading,
    @required Option<Either<LocationFailure, CityResponse>> dataCity,
  }) = _CityDataOptions;

 
}
