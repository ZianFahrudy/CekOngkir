import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:congkir/domain/location/location_failure.dart';
import 'package:congkir/domain/location/location_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:congkir/domain/location/location_req.dart';
import 'package:injectable/injectable.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc(this._locationInterface) : super(LocationState.initial());

  LocationInterface _locationInterface;

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(
      getProvinceData: (e) async* {
        yield LocationState.provinceDataOptions(
            onLoading: true, dataProvince: none());

        final _data = await _locationInterface.getAllProvince();

        yield LocationState.provinceDataOptions(
            onLoading: false, dataProvince: some(_data));
      },
      getCityData: (e) async* {
        yield LocationState.cityDataOptions(onLoading: true, dataCity: none());

        final _data =
            await _locationInterface.getCity(provinceId: e.provinceId);

        yield LocationState.cityDataOptions(
            onLoading: false, dataCity: some(_data));
      },
    );
  }
}
