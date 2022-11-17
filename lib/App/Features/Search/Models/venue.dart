import 'event_model.dart';
import 'location.dart';

class Venue {
  Venue({
    this.state,
    this.nameV2,
    this.postalCode,
    this.name,
    this.links,
    this.timezone,
    this.url,
    this.score,
    this.location,
    this.address,
    this.country,
    this.hasUpcomingEvents,
    this.numUpcomingEvents,
    this.city,
    this.slug,
    this.extendedAddress,
    this.id,
    this.popularity,
    this.accessMethod,
    this.metroCode,
    this.capacity,
    this.displayLocation,
  });

  String? state;
  String? nameV2;
  String? postalCode;
  String? name;
  List<dynamic>? links;
  Timezone? timezone;
  String? url;
  double? score;
  Location? location;
  String? address;
  Country? country;
  bool? hasUpcomingEvents;
  int? numUpcomingEvents;
  String? city;
  String? slug;
  String? extendedAddress;
  int? id;
  int? popularity;
  AccessMethod? accessMethod;
  int? metroCode;
  int? capacity;
  String? displayLocation;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    state: json["state"],
    nameV2: json["name_v2"],
    postalCode: json["postal_code"],
    name: json["name"],
    links: List<dynamic>.from(json["links"].map((x) => x)),
    timezone: timezoneValues.map?[json["timezone"]],
    url: json["url"],
    score: json["score"].toDouble(),
    location: Location.fromJson(json["location"]),
    address: json["address"],
    country: countryValues.map?[json["country"]],
    hasUpcomingEvents: json["has_upcoming_events"],
    numUpcomingEvents: json["num_upcoming_events"],
    city: json["city"],
    slug: json["slug"],
    extendedAddress: json["extended_address"],
    id: json["id"],
    popularity: json["popularity"],
    accessMethod: json["access_method"] == null ? null : AccessMethod.fromJson(json["access_method"]),
    metroCode: json["metro_code"],
    capacity: json["capacity"],
    displayLocation: json["display_location"],
  );

  Map<String, dynamic> toJson() => {
    "state": state,
    "name_v2": nameV2,
    "postal_code": postalCode,
    "name": name,
    "links": List<dynamic>.from(links!.map((x) => x)),
    "timezone": timezoneValues.reverse?[timezone],
    "url": url,
    "score": score,
    "location": location?.toJson(),
    "address": address,
    "country": countryValues.reverse?[country],
    "has_upcoming_events": hasUpcomingEvents,
    "num_upcoming_events": numUpcomingEvents,
    "city": city,
    "slug": slug,
    "extended_address": extendedAddress,
    "id": id,
    "popularity": popularity,
    "access_method": accessMethod == null ? null : accessMethod?.toJson(),
    "metro_code": metroCode,
    "capacity": capacity,
    "display_location": displayLocation,
  };
}