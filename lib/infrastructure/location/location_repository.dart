import 'package:congkir/domain/location/location_data.dart';
import 'package:congkir/domain/costs/cost_req.dart';
import 'package:congkir/domain/location/location_failure.dart';
import 'package:congkir/domain/location/location_interface.dart';
import 'package:congkir/domain/location/location_req.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LocationInterface)
class LocationRepository extends LocationInterface {
  Dio dio = Dio();

  @override
  Future<Either<LocationFailure, ProvinceResponse>> getAllProvince() async {
    String url = "https://api.rajaongkir.com/starter/province";

    Response response;

    try {
      response = await dio.get(url,
          options: Options(headers: {
            'key': '0e2bd69f06cd804465980b67caef2ad5',
          }));

      final _result = response.data['rajaongkir'];

      final data = ProvinceResponse.fromJson(_result);

      return right(data);
    } on DioError catch (e) {
      switch (e.response.statusCode) {
        case 400:
          final errorData =
              e.response.data['rajaongkir']['status']['description'];

          return left(LocationFailure.badRequest(errorData));
          break;
        case 404:
          return left(LocationFailure.notFound("Not Found"));
          break;
        default:
          return left(LocationFailure.serverError('Server Error'));
      }
    }
  }

  @override
  Future<Either<LocationFailure, CityResponse>> getCity(
      {String provinceId}) async {
    String url = "https://api.rajaongkir.com/starter/city";

    Response response;
    {}
    try {
      response = await dio.get(url,
          queryParameters: {'province': '$provinceId'},
          options: Options(headers: {
            'key': '0e2bd69f06cd804465980b67caef2ad5',
          }));

      final _result = response.data['rajaongkir'];

      final data = CityResponse.fromJson(_result);

      return right(data);
    } on DioError catch (e) {
      switch (e.response.statusCode) {
        case 400:
          final errorData =
              e.response.data['rajaongkir']['status']['description'];

          return left(LocationFailure.badRequest(errorData));
          break;
        case 404:
          return left(LocationFailure.notFound("Not Found"));
          break;
        default:
          return left(LocationFailure.serverError('Server Error'));
      }
    }
  }

  @override
  Future<Either<LocationFailure, CostResponse>> getCost(
      {LocationResultsData fromData,
      LocationResultsData toData,
      int weight,
      String courier}) async {
    String url = "https://api.rajaongkir.com/starter/cost";

    Response response;
    {}
    try {
      response = await dio.post(url,
          data: {
            "origin": fromData.cityId,
            "destination": toData.cityId,
            "weight": weight,
            "courier": courier,
          },
          options: Options(headers: {
            'key': '0e2bd69f06cd804465980b67caef2ad5',
          }));

      final _result = response.data['rajaongkir'];

      final data = CostResponse.fromJson(_result);

      return right(data);
    } on DioError catch (e) {
      switch (e.response.statusCode) {
        case 400:
          final errorData =
              e.response.data['rajaongkir']['status']['description'];

          return left(LocationFailure.badRequest(errorData));
          break;
        case 404:
          return left(LocationFailure.notFound("Not Found"));
          break;
        default:
          return left(LocationFailure.serverError('Server Error'));
      }
    }
  }
}
