import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  factory LocationFailure.badRequest(String badRequest) = _BadRequest;
  factory LocationFailure.notFound(String notFound) = _NotFound;

  factory LocationFailure.serverError(r) = _ServerError;

}
