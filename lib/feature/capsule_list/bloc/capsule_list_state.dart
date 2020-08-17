part of 'capsule_list_cubit.dart';

abstract class CapsuleListState extends Equatable {
  const CapsuleListState();
  @override
  List<Object> get props => [];
}

class CapsuleListInitial extends CapsuleListState {}

class CapsuleListEmpty extends CapsuleListState {}

class CapsuleListLoading extends CapsuleListState {}

class CapsuleList extends CapsuleListState {}
