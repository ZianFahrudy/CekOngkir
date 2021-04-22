// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:congkir/infrastructure/core/dio_module_injectable.dart';
import 'package:dio/dio.dart';
import 'package:congkir/infrastructure/location/location_repository.dart';
import 'package:congkir/domain/location/location_interface.dart';
import 'package:congkir/application/cost/cost_cubit.dart';
import 'package:congkir/application/location/location_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dioModuleInjectable = _$DioModuleInjectable();
  g.registerLazySingleton<Dio>(() => dioModuleInjectable.dio);
  g.registerFactory<LocationInterface>(() => LocationRepository());
  g.registerFactory<CostCubit>(() => CostCubit(g<LocationInterface>()));
  g.registerFactory<LocationBloc>(() => LocationBloc(g<LocationInterface>()));
}

class _$DioModuleInjectable extends DioModuleInjectable {}
