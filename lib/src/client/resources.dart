part of urlshortener_v1_api;

class UrlResource_ {

  final Client _client;

  UrlResource_(Client client) :
      _client = client;

  /**
   * Expands a short URL or gets creation time and analytics.
   *
   * [shortUrl] - The short URL, including the protocol.
   *
   * [projection] - Additional information to return.
   *   Allowed values:
   *     ANALYTICS_CLICKS - Returns only click counts.
   *     ANALYTICS_TOP_STRINGS - Returns only top string counts.
   *     FULL - Returns the creation timestamp and all available analytics.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Url> get(core.String shortUrl, {core.String projection, core.Map optParams}) {
    var url = "url";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projection != null && !["ANALYTICS_CLICKS", "ANALYTICS_TOP_STRINGS", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: ANALYTICS_CLICKS, ANALYTICS_TOP_STRINGS, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (shortUrl == null) paramErrors.add("shortUrl is required");
    if (shortUrl != null) queryParams["shortUrl"] = shortUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Url.fromJson(data));
  }

  /**
   * Creates a new short URL.
   *
   * [request] - Url to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Url> insert(Url request, {core.Map optParams}) {
    var url = "url";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Url.fromJson(data));
  }

  /**
   * Retrieves a list of URLs shortened by a user.
   *
   * [projection] - Additional information to return.
   *   Allowed values:
   *     ANALYTICS_CLICKS - Returns short URL click counts.
   *     FULL - Returns short URL click counts.
   *
   * [start_token] - Token for requesting successive pages of results.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlHistory> list({core.String projection, core.String start_token, core.Map optParams}) {
    var url = "url/history";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (projection != null && !["ANALYTICS_CLICKS", "FULL"].contains(projection)) {
      paramErrors.add("Allowed values for projection: ANALYTICS_CLICKS, FULL");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (start_token != null) queryParams["start-token"] = start_token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlHistory.fromJson(data));
  }
}

