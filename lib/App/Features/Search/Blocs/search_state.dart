part of 'search_bloc.dart';

@immutable
abstract class SearchState extends Equatable{

  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {}

class OnSearchingState extends SearchState{}

class OnSuccessRequest extends SearchState{
  final EventsModel eventsModel;

  OnSuccessRequest(this.eventsModel);
}

class OnEmptyResult extends SearchState{}

class OnErrorRequest extends SearchState{}

