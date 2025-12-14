// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:my_jaspr_site/components/app_header.dart' as _app_header;
import 'package:my_jaspr_site/section/achievements.dart' as _achievements;
import 'package:my_jaspr_site/section/calender.dart' as _calender;
import 'package:my_jaspr_site/section/clients.dart' as _clients;
import 'package:my_jaspr_site/section/community.dart' as _community;
import 'package:my_jaspr_site/section/customers.dart' as _customers;
import 'package:my_jaspr_site/section/hero.dart' as _hero;
import 'package:my_jaspr_site/section/unlock.dart' as _unlock;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',

  styles: () => [
    ..._app_header.AppHeader.styles,
    ..._achievements.Achievements.styles,
    ..._calender.Calender.styles,
    ..._clients.Clients.styles,
    ..._community.Community.styles,
    ..._customers.Customers.styles,
    ..._hero.Hero.styles,
    ..._unlock.Unlock.styles,
  ],
);
