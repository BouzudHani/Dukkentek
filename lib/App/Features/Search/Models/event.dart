import 'package:dukkentek/App/Features/Search/Models/performer.dart';
import 'package:dukkentek/App/Features/Search/Models/taxonomy.dart';
import 'package:dukkentek/App/Features/Search/Models/venue.dart';

import 'event_model.dart';
import 'event_state_model.dart';

class Event {
  Event({
    this.type,
    this.id,
    this.datetimeUtc,
    this.venue,
    this.datetimeTbd,
    this.performers,
    this.isOpen,
    this.links,
    this.datetimeLocal,
    this.timeTbd,
    this.shortTitle,
    this.visibleUntilUtc,
    this.stats,
    this.taxonomies,
    this.url,
    this.score,
    this.announceDate,
    this.createdAt,
    this.dateTbd,
    this.title,
    this.popularity,
    this.description,
    this.status,
    this.accessMethod,
    this.eventPromotion,
    this.announcements,
    this.conditional,
    this.enddatetimeUtc,
    this.themes,
    this.domainInformation,
  });

  NameEnum? type;
  int? id;
  DateTime? datetimeUtc;
  Venue? venue;
  bool? datetimeTbd;
  List<Performer>? performers;
  bool? isOpen;
  List<dynamic>? links;
  DateTime? datetimeLocal;
  bool? timeTbd;
  String? shortTitle;
  DateTime? visibleUntilUtc;
  EventStats? stats;
  List<Taxonomy>? taxonomies;
  String? url;
  double? score;
  DateTime? announceDate;
  DateTime? createdAt;
  bool? dateTbd;
  String? title;
  double? popularity;
  String? description;
  Status? status;
  AccessMethod? accessMethod;
  dynamic? eventPromotion;
  Announcements? announcements;
  bool? conditional;
  dynamic? enddatetimeUtc;
  List<dynamic>? themes;
  List<dynamic>? domainInformation;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    type: nameEnumValues.map?[json["type"]],
    id: json["id"],
    datetimeUtc: DateTime.parse(json["datetime_utc"]),
    venue: Venue.fromJson(json["venue"]),
    datetimeTbd: json["datetime_tbd"],
    performers: List<Performer>.from(json["performers"].map((x) => Performer.fromJson(x))),
    isOpen: json["is_open"],
    links: List<dynamic>.from(json["links"].map((x) => x)),
    datetimeLocal: DateTime.parse(json["datetime_local"]),
    timeTbd: json["time_tbd"],
    shortTitle: json["short_title"],
    visibleUntilUtc: DateTime.parse(json["visible_until_utc"]),
    stats: EventStats.fromJson(json["stats"]),
    taxonomies: List<Taxonomy>.from(json["taxonomies"].map((x) => Taxonomy.fromJson(x))),
    url: json["url"],
    score: json["score"].toDouble(),
    announceDate: DateTime.parse(json["announce_date"]),
    createdAt: DateTime.parse(json["created_at"]),
    dateTbd: json["date_tbd"],
    title: json["title"],
    popularity: json["popularity"].toDouble(),
    description: json["description"],
    status: statusValues.map?[json["status"]],
    accessMethod: json["access_method"] == null ? null : AccessMethod.fromJson(json["access_method"]),
    eventPromotion: json["event_promotion"],
    announcements: Announcements.fromJson(json["announcements"]),
    conditional: json["conditional"],
    enddatetimeUtc: json["enddatetime_utc"],
    themes: List<dynamic>.from(json["themes"].map((x) => x)),
    domainInformation: List<dynamic>.from(json["domain_information"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "type": nameEnumValues.reverse?[type],
    "id": id,
    "datetime_utc": datetimeUtc?.toIso8601String(),
    "venue": venue?.toJson(),
    "datetime_tbd": datetimeTbd,
    "performers": List<dynamic>.from(performers!.map((x) => x.toJson())),
    "is_open": isOpen,
    "links": List<dynamic>.from(links!.map((x) => x)),
    "datetime_local": datetimeLocal?.toIso8601String(),
    "time_tbd": timeTbd,
    "short_title": shortTitle,
    "visible_until_utc": visibleUntilUtc?.toIso8601String(),
    "stats": stats?.toJson(),
    "taxonomies": List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "url": url,
    "score": score,
    "announce_date": announceDate?.toIso8601String(),
    "created_at": createdAt?.toIso8601String(),
    "date_tbd": dateTbd,
    "title": title,
    "popularity": popularity,
    "description": description,
    "status": statusValues.reverse?[status],
    "access_method": accessMethod == null ? null : accessMethod?.toJson(),
    "event_promotion": eventPromotion,
    "announcements": announcements?.toJson(),
    "conditional": conditional,
    "enddatetime_utc": enddatetimeUtc,
    "themes": List<dynamic>.from(themes!.map((x) => x)),
    "domain_information": List<dynamic>.from(domainInformation!.map((x) => x)),
  };
}