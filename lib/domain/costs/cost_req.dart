import 'package:congkir/domain/costs/cost_data.dart';
import 'package:congkir/domain/location/location_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_req.freezed.dart';
part 'cost_req.g.dart';

@freezed
abstract class CostReq with _$CostReq {
  factory CostReq.costResponse({
    LocationStatusData status,
    List<CostResults> results,
  }) = CostResponse;

  factory CostReq.fromJson(Map<String, dynamic> json) =>
      _$CostReqFromJson(json);
}
