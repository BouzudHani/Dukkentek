part of 'eventsdb_bloc.dart';

@immutable
abstract class EventsdbState extends Equatable{
  @override
  List<Object?> get props => [];
}

class EventsdbInitial extends EventsdbState {
}

class LoadingState extends EventsdbState{
}

class SuccessState extends EventsdbState{
  SuccessState(this.events);
  final List<EventDB> events;
}

class ErrorState extends EventsdbState{
}

class EmptyState extends EventsdbState{
}

class OnTroggleChangeState extends EventsdbState{
  OnTroggleChangeState (this.events);
  final List<EventDB> events;
}



