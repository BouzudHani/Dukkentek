part of 'add_cubit.dart';

@immutable
abstract class AddState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AddInitial extends AddState {
}

class OnAddedSuccefully extends AddState{}

class OnItemExist extends AddState{}