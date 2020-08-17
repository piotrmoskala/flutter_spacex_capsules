import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'capsule_list_state.dart';

class CapsuleListCubit extends Cubit<CapsuleListState> {
  CapsuleListCubit() : super(CapsuleListInitial());
}
