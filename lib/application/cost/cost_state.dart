part of 'cost_cubit.dart';

@freezed
abstract class CostState with _$CostState {
  const factory CostState.initial() = _Initial;
  const factory CostState.costDataOption({
    @required bool onLoading,
    @required Option<Either<LocationFailure, CostResponse>> dataCost,
  }) = _CostDataOptions;
}
