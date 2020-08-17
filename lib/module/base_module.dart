import 'package:get_it/get_it.dart';
import 'package:spacex_capsules/module/network_module.dart';
import 'package:spacex_capsules/module/repository_module.dart';
import 'package:spacex_capsules/module/usecase_module.dart';

import 'bloc_module.dart';

abstract class BaseModule {
  Future<void> register(GetIt getIt);

  static List<BaseModule> modules() {
    return [
      BlocModule(),
      NetworkModule(),
      RepositoryModule(),
      UseCaseModule(),
    ];
  }
}
