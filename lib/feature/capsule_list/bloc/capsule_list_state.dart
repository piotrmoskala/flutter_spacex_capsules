part of 'capsule_list_cubit.dart';

class CapsuleListState extends Equatable {
  @override
  List<Object> get props => [];
}

class CapsuleListInitial extends CapsuleListState {}

class CapsuleListEmpty extends CapsuleListState {}

class CapsuleListLoading extends CapsuleListState {}

class CapsuleListSelected extends CapsuleListState {
  final Capsule capsule;
  CapsuleListSelected(this.capsule);

  @override
  List<Object> get props => [capsule];
}

class CapsuleList extends CapsuleListState {
  final List<Capsule> capsules;
  CapsuleList(this.capsules);
}

class CapsuleListError extends CapsuleListState {
  final String message;
  CapsuleListError(this.message);
}
