import 'package:bloc/bloc.dart';
import 'package:congkir/domain/location/location_data.dart';
import 'package:congkir/domain/location/location_failure.dart';
import 'package:congkir/domain/location/location_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:congkir/domain/costs/cost_req.dart';

part 'cost_state.dart';
part 'cost_cubit.freezed.dart';

@injectable
class CostCubit extends Cubit<CostState> {
  CostCubit(this._locationInterface) : super(CostState.initial());

  LocationInterface _locationInterface;
  void getCost({
    @required LocationResultsData origin,
    @required LocationResultsData destination,
    @required int weight,
    @required String courier,
  }) async {
    emit(CostState.costDataOption(onLoading: true, dataCost: none()));

    final _result = await _locationInterface.getCost(
        fromData: origin,
        toData: destination,
        weight: weight,
        courier: courier);

    emit(CostState.costDataOption(onLoading: false, dataCost: some(_result)));
  }
}
