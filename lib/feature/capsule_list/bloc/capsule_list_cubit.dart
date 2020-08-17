import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/usecase/get_capsules_usecase.dart';

part 'capsule_list_state.dart';

class CapsuleListCubit extends Cubit<CapsuleListState> {
  final GetCapsulesUseCase _getCapsulesUseCase;

  CapsuleListCubit(this._getCapsulesUseCase) : super(CapsuleListInitial());

  void getCapsules() async {
    emit(CapsuleListLoading());
    await _getCapsulesUseCase.getCapsules().then((capsules) {
      if (capsules.isEmpty) {
        emit(CapsuleListEmpty());
      } else {
        emit(CapsuleList(capsules));
      }
    }).catchError((error) => CapsuleListError(error.toString()));
  }
}
