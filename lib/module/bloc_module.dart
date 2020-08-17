import 'package:get_it/get_it.dart';
import 'package:spacex_capsules/feature/capsule_list/bloc/capsule_list_cubit.dart';
import 'package:spacex_capsules/module/base_module.dart';

class BlocModule extends BaseModule {
  @override
  Future<void> register(GetIt getIt) async {
    getIt.registerLazySingleton(() => CapsuleListCubit(getIt()));
  }
}
