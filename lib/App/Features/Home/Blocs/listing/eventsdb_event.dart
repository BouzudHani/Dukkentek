part of 'eventsdb_bloc.dart';

abstract class EventsdbEvent extends Equatable {

  @override
  List<Object?> get props => [];
}

class InitEvent  extends EventsdbEvent {}

class OnRefreshEvent  extends EventsdbEvent {}

class OnTroggleChangeEvent  extends EventsdbEvent{
  final String title;
  OnTroggleChangeEvent(this.title);
}

