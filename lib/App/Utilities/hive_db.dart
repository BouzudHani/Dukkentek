import 'package:dukkentek/App/Features/Home/Models/event_db_model.dart';
import 'package:dukkentek/App/Utilities/utilities.dart';
import 'package:hive/hive.dart';

class Database{

  static Box? box ;

  static initDB() async {
    Hive.registerAdapter<EventDB>(EventDBAdapter());
    box = await Hive.openBox<EventDB>('favoriteEvents');

  }

  static add(EventDB event){
    box!.add(event);
    print('event added');
  }

  static update(EventDB event){
    event.save();
  }

  static delete(EventDB event){
    event.delete();
  }

  static List<EventDB> getData(){
    List<EventDB> events = [] ;
    if(box!.values.isNotEmpty){
      for(var i in box!.values){
        events.add(i);
      }
    }
    print(events.length);
    return events;
  }

  static EventDB getDataByName(String title){
    EventDB event = getData().firstWhere(
            (element) => element.title == title,
    );
    return event;
  }

}