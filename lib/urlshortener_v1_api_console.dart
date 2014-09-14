library urlshortener_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_urlshortener_v1_api/src/console_client.dart';

import "package:google_urlshortener_v1_api/urlshortener_v1_api_client.dart";

/** Lets you create, inspect, and manage goo.gl short URLs */
@deprecated
class Urlshortener extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your goo.gl short URLs */
  static const String URLSHORTENER_SCOPE = "https://www.googleapis.com/auth/urlshortener";

  final oauth2.OAuth2Console auth;

  Urlshortener([oauth2.OAuth2Console this.auth]);
}
