library urlshortener_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_urlshortener_v1_api/src/cloud_api_browser.dart';
import "package:google_urlshortener_v1_api/urlshortener_v1_api_client.dart";

/** Lets you create, inspect, and manage goo.gl short URLs */
class Urlshortener extends Client with BrowserClient {

  /** OAuth Scope2: Manage your goo.gl short URLs */
  static const String URLSHORTENER_SCOPE = "https://www.googleapis.com/auth/urlshortener";

  final oauth.OAuth2 auth;

  Urlshortener([oauth.OAuth2 this.auth]);
}
