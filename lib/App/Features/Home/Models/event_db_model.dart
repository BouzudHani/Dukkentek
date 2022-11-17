import 'package:hive/hive.dart';

part 'event_db_model.g.dart';

@HiveType(typeId: 1)
class EventDB extends HiveObject {
  EventDB({
      required this.id,
      required this.title,
      required this.dateTime,
      this.description,
      this.isFavorite ,
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String? dateTime;

  @HiveField(4)
  bool? isFavorite;

}