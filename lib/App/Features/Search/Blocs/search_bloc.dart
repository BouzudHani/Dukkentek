import 'package:bloc/bloc.dart';
import 'package:dukkentek/App/Features/Home/Models/event_db_model.dart';
import 'package:dukkentek/App/Features/Search/Models/event_model.dart';
import 'package:dukkentek/App/Features/Search/Repository/search_repository.dart';
import 'package:dukkentek/App/Utilities/hive_db.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {

  SearchBloc() : super(SearchInitial()) {
    on<OnSearchEvent>(_onSearch);
  }

  _onSearch(OnSearchEvent event , Emitter<SearchState> emit) async {
      emit(OnSearchingState());
      var result  = await SearchRepo.searchEvent(event.eventName);
      if(result !=null){
        if(result.events!.isNotEmpty){
          emit(OnSuccessRequest(result));
        }else{
          emit(OnEmptyResult());
        }
      }else{
        emit(OnErrorRequest());
      }
  }


}
