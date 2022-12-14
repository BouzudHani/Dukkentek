// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_db_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventDBAdapter extends TypeAdapter<EventDB> {
  @override
  final int typeId = 1;

  @override
  EventDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventDB(
      id: fields[0] as int,
      title: fields[1] as String,
      dateTime: fields[3] as String?,
      description: fields[2] as String?,
      isFavorite: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, EventDB obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.dateTime)
      ..writeByte(4)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
