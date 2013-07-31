part of urlshortener_v1_api;

class AnalyticsSnapshot {

  /** Top browsers, e.g. "Chrome"; sorted by (descending) click counts. Only present if this data is available. */
  core.List<StringCount> browsers;

  /** Top countries (expressed as country codes), e.g. "US" or "DE"; sorted by (descending) click counts. Only present if this data is available. */
  core.List<StringCount> countries;

  /** Number of clicks on all goo.gl short URLs pointing to this long URL. */
  core.int longUrlClicks;

  /** Top platforms or OSes, e.g. "Windows"; sorted by (descending) click counts. Only present if this data is available. */
  core.List<StringCount> platforms;

  /** Top referring hosts, e.g. "www.google.com"; sorted by (descending) click counts. Only present if this data is available. */
  core.List<StringCount> referrers;

  /** Number of clicks on this short URL. */
  core.int shortUrlClicks;

  /** Create new AnalyticsSnapshot from JSON data */
  AnalyticsSnapshot.fromJson(core.Map json) {
    if (json.containsKey("browsers")) {
      browsers = json["browsers"].map((browsersItem) => new StringCount.fromJson(browsersItem)).toList();
    }
    if (json.containsKey("countries")) {
      countries = json["countries"].map((countriesItem) => new StringCount.fromJson(countriesItem)).toList();
    }
    if (json.containsKey("longUrlClicks")) {
      longUrlClicks = (json["longUrlClicks"] is core.String) ? core.int.parse(json["longUrlClicks"]) : json["longUrlClicks"];
    }
    if (json.containsKey("platforms")) {
      platforms = json["platforms"].map((platformsItem) => new StringCount.fromJson(platformsItem)).toList();
    }
    if (json.containsKey("referrers")) {
      referrers = json["referrers"].map((referrersItem) => new StringCount.fromJson(referrersItem)).toList();
    }
    if (json.containsKey("shortUrlClicks")) {
      shortUrlClicks = (json["shortUrlClicks"] is core.String) ? core.int.parse(json["shortUrlClicks"]) : json["shortUrlClicks"];
    }
  }

  /** Create JSON Object for AnalyticsSnapshot */
  core.Map toJson() {
    var output = new core.Map();

    if (browsers != null) {
      output["browsers"] = browsers.map((browsersItem) => browsersItem.toJson()).toList();
    }
    if (countries != null) {
      output["countries"] = countries.map((countriesItem) => countriesItem.toJson()).toList();
    }
    if (longUrlClicks != null) {
      output["longUrlClicks"] = longUrlClicks;
    }
    if (platforms != null) {
      output["platforms"] = platforms.map((platformsItem) => platformsItem.toJson()).toList();
    }
    if (referrers != null) {
      output["referrers"] = referrers.map((referrersItem) => referrersItem.toJson()).toList();
    }
    if (shortUrlClicks != null) {
      output["shortUrlClicks"] = shortUrlClicks;
    }

    return output;
  }

  /** Return String representation of AnalyticsSnapshot */
  core.String toString() => JSON.stringify(this.toJson());

}

class AnalyticsSummary {

  /** Click analytics over all time. */
  AnalyticsSnapshot allTime;

  /** Click analytics over the last day. */
  AnalyticsSnapshot day;

  /** Click analytics over the last month. */
  AnalyticsSnapshot month;

  /** Click analytics over the last two hours. */
  AnalyticsSnapshot twoHours;

  /** Click analytics over the last week. */
  AnalyticsSnapshot week;

  /** Create new AnalyticsSummary from JSON data */
  AnalyticsSummary.fromJson(core.Map json) {
    if (json.containsKey("allTime")) {
      allTime = new AnalyticsSnapshot.fromJson(json["allTime"]);
    }
    if (json.containsKey("day")) {
      day = new AnalyticsSnapshot.fromJson(json["day"]);
    }
    if (json.containsKey("month")) {
      month = new AnalyticsSnapshot.fromJson(json["month"]);
    }
    if (json.containsKey("twoHours")) {
      twoHours = new AnalyticsSnapshot.fromJson(json["twoHours"]);
    }
    if (json.containsKey("week")) {
      week = new AnalyticsSnapshot.fromJson(json["week"]);
    }
  }

  /** Create JSON Object for AnalyticsSummary */
  core.Map toJson() {
    var output = new core.Map();

    if (allTime != null) {
      output["allTime"] = allTime.toJson();
    }
    if (day != null) {
      output["day"] = day.toJson();
    }
    if (month != null) {
      output["month"] = month.toJson();
    }
    if (twoHours != null) {
      output["twoHours"] = twoHours.toJson();
    }
    if (week != null) {
      output["week"] = week.toJson();
    }

    return output;
  }

  /** Return String representation of AnalyticsSummary */
  core.String toString() => JSON.stringify(this.toJson());

}

class StringCount {

  /** Number of clicks for this top entry, e.g. for this particular country or browser. */
  core.int count;

  /** Label assigned to this top entry, e.g. "US" or "Chrome". */
  core.String id;

  /** Create new StringCount from JSON data */
  StringCount.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for StringCount */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of StringCount */
  core.String toString() => JSON.stringify(this.toJson());

}

class Url {

  /** A summary of the click analytics for the short and long URL. Might not be present if not requested or currently unavailable. */
  AnalyticsSummary analytics;

  /** Time the short URL was created; ISO 8601 representation using the yyyy-MM-dd'T'HH:mm:ss.SSSZZ format, e.g. "2010-10-14T19:01:24.944+00:00". */
  core.String created;

  /** Short URL, e.g. "http://goo.gl/l6MS". */
  core.String id;

  /** The fixed string "urlshortener#url". */
  core.String kind;

  /** Long URL, e.g. "http://www.google.com/". Might not be present if the status is "REMOVED". */
  core.String longUrl;

  /** Status of the target URL. Possible values: "OK", "MALWARE", "PHISHING", or "REMOVED". A URL might be marked "REMOVED" if it was flagged as spam, for example. */
  core.String status;

  /** Create new Url from JSON data */
  Url.fromJson(core.Map json) {
    if (json.containsKey("analytics")) {
      analytics = new AnalyticsSummary.fromJson(json["analytics"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("longUrl")) {
      longUrl = json["longUrl"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Url */
  core.Map toJson() {
    var output = new core.Map();

    if (analytics != null) {
      output["analytics"] = analytics.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (longUrl != null) {
      output["longUrl"] = longUrl;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Url */
  core.String toString() => JSON.stringify(this.toJson());

}

class UrlHistory {

  /** A list of URL resources. */
  core.List<Url> items;

  /** Number of items returned with each full "page" of results. Note that the last page could have fewer items than the "itemsPerPage" value. */
  core.int itemsPerPage;

  /** The fixed string "urlshortener#urlHistory". */
  core.String kind;

  /** A token to provide to get the next page of results. */
  core.String nextPageToken;

  /** Total number of short URLs associated with this user (may be approximate). */
  core.int totalItems;

  /** Create new UrlHistory from JSON data */
  UrlHistory.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Url.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for UrlHistory */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of UrlHistory */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
