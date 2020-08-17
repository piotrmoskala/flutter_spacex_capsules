import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:spacex_capsules/injector.dart';

abstract class BasePage<T extends Cubit> extends StatelessWidget {
  T bloc = Injector.getIt<T>();
}