import 'document_source.dart';
import 'event_model.dart';

class Taxonomy {
  Taxonomy({
    this.id,
    this.name,
    this.parentId,
    this.documentSource,
    this.rank,
  });

  int? id;
  NameEnum? name;
  int? parentId;
  DocumentSource? documentSource;
  int? rank;

  factory Taxonomy.fromJson(Map<String, dynamic> json) => Taxonomy(
    id: json["id"],
    name: nameEnumValues.map?[json["name"]],
    parentId: json["parent_id"] == null ? null : json["parent_id"],
    documentSource: json["document_source"] == null ? null : DocumentSource.fromJson(json["document_source"]),
    rank: json["rank"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameEnumValues.reverse?[name],
    "parent_id": parentId == null ? null : parentId,
    "document_source": documentSource == null ? null : documentSource?.toJson(),
    "rank": rank,
  };
}