import 'package:get_it/get_it.dart';

import 'module/base_module.dart';

class Injector {
  static final getIt = GetIt.instance;

  static Future<void> init() async {
    BaseModule.modules().forEach((element) {
      element.register(getIt);
    });
  }
}
