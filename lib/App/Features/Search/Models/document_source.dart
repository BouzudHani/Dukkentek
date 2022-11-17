import 'event_model.dart';

class DocumentSource {
  DocumentSource({
    this.sourceType,
    this.generationType,
  });

  SourceType? sourceType;
  GenerationType? generationType;

  factory DocumentSource.fromJson(Map<String, dynamic> json) => DocumentSource(
    sourceType: sourceTypeValues.map?[json["source_type"]],
    generationType: generationTypeValues.map?[json["generation_type"]],
  );

  Map<String, dynamic> toJson() => {
    "source_type": sourceTypeValues.reverse?[sourceType],
    "generation_type": generationTypeValues.reverse?[generationType],
  };
}