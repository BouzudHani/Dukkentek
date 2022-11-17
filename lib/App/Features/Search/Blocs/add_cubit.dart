import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../Utilities/hive_db.dart';
import '../../Home/Models/event_db_model.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit() : super(AddInitial());

  onAdd(EventDB event){
    if(checkExistenceOfItem(event.title)){
      emit(OnItemExist());
    }else{
      Database.add(event);
      emit(OnAddedSuccefully());
    }
  }

  bool checkExistenceOfItem(String title){
    try{
      EventDB? eventDB = Database.getDataByName(title);
      if(eventDB != null){
        return true;
      }else{
        return false;
      }
    }catch (e){
      return false;
    }
  }

}
