class PerformerStats {
  PerformerStats({
    this.eventCount,
  });

  int? eventCount;

  factory PerformerStats.fromJson(Map<String, dynamic> json) => PerformerStats(
    eventCount: json["event_count"],
  );

  Map<String, dynamic> toJson() => {
    "event_count": eventCount,
  };
}