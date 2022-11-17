import 'package:dukkentek/App/Utilities/hive_db.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Utilities/utilities.dart';
import '../../Models/event_db_model.dart';

part 'eventsdb_event.dart';

part 'eventsdb_state.dart';

class EventsdbBloc extends Bloc<EventsdbEvent, EventsdbState> {
  EventsdbBloc() : super(EventsdbInitial()) {
    on<InitEvent>(_onInit);
    on<OnRefreshEvent>(onRefrech);
    on<OnTroggleChangeEvent>(_onChangeToggle);
  }

  _onChangeToggle(OnTroggleChangeEvent event, Emitter<EventsdbState> emit) {
    EventDB? eventDB = Database.getDataByName(event.title);
    if (eventDB != null) {
      if(eventDB.isFavorite == true){
        eventDB.isFavorite = false;
        List<EventDB> eventsFavorite = Database.getData();
        emit(OnTroggleChangeState(eventsFavorite));
        if (eventsFavorite.isNotEmpty) {
          emit(SuccessState(eventsFavorite));
        } else {
          emit(EmptyState());
        }
      }else{
        eventDB.isFavorite = true;
        List<EventDB> eventsFavorite = Database.getData();
        emit(OnTroggleChangeState(eventsFavorite));
        if (eventsFavorite.isNotEmpty) {
          emit(SuccessState(eventsFavorite));
        } else {
          emit(EmptyState());
        }
      }
    } else {
      toastMe('Item not Existing');
    }
  }

  Future<void> onRefrech(
      OnRefreshEvent event, Emitter<EventsdbState> emit) async {
    try {
      List<EventDB> eventsFavorite = Database.getData();
      if (eventsFavorite.isNotEmpty) {
        emit(SuccessState(eventsFavorite));
      } else {
        emit(EmptyState());
      }
    } catch (e) {
      emit(ErrorState());
    }
  }

  _onInit(InitEvent event, Emitter<EventsdbState> emit) {
    emit(LoadingState());
    try {
      List<EventDB> eventsFavorite = Database.getData();
      if (eventsFavorite.isNotEmpty) {
        emit(SuccessState(eventsFavorite));
      } else {
        emit(EmptyState());
      }
    } catch (e) {
      emit(ErrorState());
    }
  }
}
