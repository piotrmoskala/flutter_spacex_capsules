import 'package:get_it/get_it.dart';
import 'package:spacex_capsules/repository/capsules_repository.dart';

import 'base_module.dart';

class RepositoryModule extends BaseModule {
  @override
  Future<void> module(GetIt getIt) async {
    getIt.registerLazySingleton(() => CapsulesRepository());
  }
}