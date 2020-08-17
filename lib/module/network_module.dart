import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:spacex_capsules/data_source/network/api_service.dart';
import 'package:spacex_capsules/module/base_module.dart';

class NetworkModule extends BaseModule {
  @override
  Future<void> module(GetIt getIt) async {
    getIt.registerLazySingleton(() => Dio());
    getIt.registerLazySingleton(() => ApiService(getIt()));
  }
}