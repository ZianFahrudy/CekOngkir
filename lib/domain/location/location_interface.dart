import 'package:congkir/domain/location/location_data.dart';
import 'package:congkir/domain/location/location_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:congkir/domain/location/location_req.dart';
import 'package:flutter/foundation.dart';
import 'package:congkir/domain/costs/cost_req.dart';

abstract class LocationInterface {
  Future<Either<LocationFailure, ProvinceResponse>> getAllProvince();

  Future<Either<LocationFailure, CityResponse>> getCity(
      {@required String provinceId});

  Future<Either<LocationFailure, CostResponse>> getCost(
      {@required LocationResultsData fromData,
      @required LocationResultsData toData,
      @required int weight,
      @required String courier});
}
