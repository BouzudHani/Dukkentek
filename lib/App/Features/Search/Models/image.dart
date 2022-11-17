class Images {
  Images({
    this.huge,
  });

  String? huge;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    huge: json["huge"],
  );

  Map<String, dynamic> toJson() => {
    "huge": huge,
  };
}