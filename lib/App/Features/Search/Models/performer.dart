import 'package:dukkentek/App/Features/Search/Models/performer_state_model.dart';
import 'package:dukkentek/App/Features/Search/Models/taxonomy.dart';

import 'event_model.dart';
import 'image.dart';
import 'location.dart';

class Performer {
  Performer({
    this.type,
    this.name,
    this.image,
    this.id,
    this.images,
    this.divisions,
    this.hasUpcomingEvents,
    this.primary,
    this.stats,
    this.taxonomies,
    this.imageAttribution,
    this.url,
    this.score,
    this.slug,
    this.homeVenueId,
    this.shortName,
    this.numUpcomingEvents,
    this.colors,
    this.imageLicense,
    this.popularity,
    this.homeTeam,
    this.location,
    this.imageRightsMessage,
    this.awayTeam,
  });

  PerformerType? type;
  String? name;
  String? image;
  int? id;
  Images? images;
  dynamic? divisions;
  bool? hasUpcomingEvents;
  bool? primary;
  PerformerStats? stats;
  List<Taxonomy>? taxonomies;
  String? imageAttribution;
  String? url;
  double? score;
  String? slug;
  int? homeVenueId;
  String? shortName;
  int? numUpcomingEvents;
  dynamic? colors;
  String? imageLicense;
  int? popularity;
  bool? homeTeam;
  Location? location;
  String? imageRightsMessage;
  bool? awayTeam;

  factory Performer.fromJson(Map<String, dynamic> json) => Performer(
    type: performerTypeValues.map?[json["type"]],
    name: json["name"],
    image: json["image"],
    id: json["id"],
    images: Images.fromJson(json["images"]),
    divisions: json["divisions"],
    hasUpcomingEvents: json["has_upcoming_events"],
    primary: json["primary"] == null ? null : json["primary"],
    stats: PerformerStats.fromJson(json["stats"]),
    taxonomies: List<Taxonomy>.from(json["taxonomies"].map((x) => Taxonomy.fromJson(x))),
    imageAttribution: json["image_attribution"],
    url: json["url"],
    score: json["score"].toDouble(),
    slug: json["slug"],
    homeVenueId: json["home_venue_id"] == null ? null : json["home_venue_id"],
    shortName: json["short_name"],
    numUpcomingEvents: json["num_upcoming_events"],
    colors: json["colors"],
    imageLicense: json["image_license"],
    popularity: json["popularity"],
    homeTeam: json["home_team"] == null ? null : json["home_team"],
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    imageRightsMessage: json["image_rights_message"],
    awayTeam: json["away_team"] == null ? null : json["away_team"],
  );

  Map<String, dynamic> toJson() => {
    "type": performerTypeValues.reverse?[type],
    "name": name,
    "image": image,
    "id": id,
    "images": images?.toJson(),
    "divisions": divisions,
    "has_upcoming_events": hasUpcomingEvents,
    "primary": primary,
    "stats": stats?.toJson(),
    "taxonomies": List<dynamic>.from(taxonomies!.map((x) => x.toJson())),
    "image_attribution": imageAttribution,
    "url": url,
    "score": score,
    "slug": slug,
    "home_venue_id": homeVenueId,
    "short_name": shortName,
    "num_upcoming_events": numUpcomingEvents,
    "colors": colors,
    "image_license": imageLicense,
    "popularity": popularity,
    "home_team": homeTeam,
    "location": location == null ? null : location?.toJson(),
    "image_rights_message": imageRightsMessage,
    "away_team": awayTeam,
  };
}
