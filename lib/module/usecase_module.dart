import 'package:get_it/get_it.dart';
import 'package:spacex_capsules/usecase/get_capsules_usecase.dart';

import 'base_module.dart';

class UseCaseModule extends BaseModule {
  @override
  Future<void> module(GetIt getIt) async {
    getIt.registerLazySingleton(() => GetCapsulesUseCase());
  }
}
