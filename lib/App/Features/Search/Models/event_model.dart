import 'dart:convert';

import 'enum_value.dart';
import 'event.dart';
import 'meta.dart';

EventsModel eventsModelFromJson(String str) => EventsModel.fromJson(json.decode(str));

String eventsModelToJson(EventsModel data) => json.encode(data.toJson());

class EventsModel {
  EventsModel({
    this.events,
    this.meta,
  });

  List<Event>? events;
  Meta? meta;

  factory EventsModel.fromJson(Map<String, dynamic> json) => EventsModel(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events!.map((x) => x.toJson())),
    "meta": meta?.toJson(),
  };
}

class AccessMethod {
  AccessMethod({
    this.method,
    this.createdAt,
    this.employeeOnly,
  });

  String? method;
  DateTime? createdAt;
  bool? employeeOnly;

  factory AccessMethod.fromJson(Map<String, dynamic> json) => AccessMethod(
    method: json["method"],
    createdAt: DateTime.parse(json["created_at"]),
    employeeOnly: json["employee_only"],
  );

  Map<String, dynamic> toJson() => {
    "method": method,
    "created_at": createdAt?.toIso8601String(),
    "employee_only": employeeOnly,
  };
}

class Announcements {
  Announcements();

  factory Announcements.fromJson(Map<String, dynamic> json) => Announcements(
  );

  Map<String, dynamic> toJson() => {
  };
}

enum GenerationType { FULL }

final generationTypeValues = EnumValues({
  "FULL": GenerationType.FULL
});

enum SourceType { ELASTIC }

final sourceTypeValues = EnumValues({
  "ELASTIC": SourceType.ELASTIC
});

enum NameEnum { SPORTS, HOCKEY, MINOR_LEAGUE_HOCKEY, THEATER, COMEDY }

final nameEnumValues = EnumValues({
  "comedy": NameEnum.COMEDY,
  "hockey": NameEnum.HOCKEY,
  "minor_league_hockey": NameEnum.MINOR_LEAGUE_HOCKEY,
  "sports": NameEnum.SPORTS,
  "theater": NameEnum.THEATER
});

enum PerformerType { MINOR_LEAGUE_HOCKEY, THEATER_COMEDY }

final performerTypeValues = EnumValues({
  "minor_league_hockey": PerformerType.MINOR_LEAGUE_HOCKEY,
  "theater_comedy": PerformerType.THEATER_COMEDY
});



enum Status { NORMAL }

final statusValues = EnumValues({
  "normal": Status.NORMAL
});


enum Country { US, CANADA }

final countryValues = EnumValues({
  "Canada": Country.CANADA,
  "US": Country.US
});

enum Timezone { AMERICA_DENVER, AMERICA_LOS_ANGELES, AMERICA_EDMONTON }

final timezoneValues = EnumValues({
  "America/Denver": Timezone.AMERICA_DENVER,
  "America/Edmonton": Timezone.AMERICA_EDMONTON,
  "America/Los_Angeles": Timezone.AMERICA_LOS_ANGELES
});

