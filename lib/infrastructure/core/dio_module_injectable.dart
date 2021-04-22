import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModuleInjectable {
  @lazySingleton
  Dio get dio => Dio();
}
