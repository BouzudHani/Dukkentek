part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class OnSearchEvent extends SearchEvent{
  final String eventName;

  OnSearchEvent(this.eventName);
}
