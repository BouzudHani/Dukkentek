class EventStats {
  EventStats({
    this.listingCount,
    this.averagePrice,
    this.lowestPriceGoodDeals,
    this.lowestPrice,
    this.highestPrice,
    this.visibleListingCount,
    this.dqBucketCounts,
    this.medianPrice,
    this.lowestSgBasePrice,
    this.lowestSgBasePriceGoodDeals,
  });

  int? listingCount;
  int? averagePrice;
  int? lowestPriceGoodDeals;
  int? lowestPrice;
  int? highestPrice;
  int? visibleListingCount;
  List<int>? dqBucketCounts;
  int? medianPrice;
  int? lowestSgBasePrice;
  int? lowestSgBasePriceGoodDeals;

  factory EventStats.fromJson(Map<String, dynamic> json) => EventStats(
    listingCount: json["listing_count"] == null ? null : json["listing_count"],
    averagePrice: json["average_price"] == null ? null : json["average_price"],
    lowestPriceGoodDeals: json["lowest_price_good_deals"] == null ? null : json["lowest_price_good_deals"],
    lowestPrice: json["lowest_price"] == null ? null : json["lowest_price"],
    highestPrice: json["highest_price"] == null ? null : json["highest_price"],
    visibleListingCount: json["visible_listing_count"] == null ? null : json["visible_listing_count"],
    dqBucketCounts: json["dq_bucket_counts"] == null ? null : List<int>.from(json["dq_bucket_counts"].map((x) => x)),
    medianPrice: json["median_price"] == null ? null : json["median_price"],
    lowestSgBasePrice: json["lowest_sg_base_price"] == null ? null : json["lowest_sg_base_price"],
    lowestSgBasePriceGoodDeals: json["lowest_sg_base_price_good_deals"] == null ? null : json["lowest_sg_base_price_good_deals"],
  );

  Map<String, dynamic> toJson() => {
    "listing_count": listingCount == null ? null : listingCount,
    "average_price": averagePrice == null ? null : averagePrice,
    "lowest_price_good_deals": lowestPriceGoodDeals == null ? null : lowestPriceGoodDeals,
    "lowest_price": lowestPrice == null ? null : lowestPrice,
    "highest_price": highestPrice == null ? null : highestPrice,
    "visible_listing_count": visibleListingCount == null ? null : visibleListingCount,
    "dq_bucket_counts": dqBucketCounts == null ? null : List<dynamic>.from(dqBucketCounts!.map((x) => x)),
    "median_price": medianPrice == null ? null : medianPrice,
    "lowest_sg_base_price": lowestSgBasePrice == null ? null : lowestSgBasePrice,
    "lowest_sg_base_price_good_deals": lowestSgBasePriceGoodDeals == null ? null : lowestSgBasePriceGoodDeals,
  };
}