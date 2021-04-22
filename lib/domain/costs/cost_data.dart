import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_data.freezed.dart';
part 'cost_data.g.dart';

@freezed
abstract class CostData with _$CostData {
  factory CostData.costResult({
    String code,
    String name,
    List<Costs> costs,
  }) = CostResults;

  factory CostData.costs({
    String service,
    String description,
    List<Cost> cost,
  }) = Costs;
  factory CostData.cost({
    int value,
    String etd,
    String note,
  }) = Cost;

  factory CostData.fromJson(Map<String, dynamic> json) =>
      _$CostDataFromJson(json);
}
