import 'package:get_it/get_it.dart';

abstract class BaseModule {
  Future<void> module(GetIt getIt);
}