library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: 'my_jaspr_site',
      styles: [
        css.import(
          'https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap',
        ),
        css("*").styles(
          padding: .zero,
          margin: .zero,
          boxSizing: .borderBox,
          fontFamily: FontFamily.list([FontFamily('Inter'), FontFamilies.sansSerif]),
          raw: {'scroll-behavior': 'smooth'},
        ),

        css('body').styles(
          height: 100.percent,
          // maxWidth: 1440.px,
          margin: .symmetric(vertical: .zero, horizontal: .auto),
        ),

        css('a').styles(
          color: .inherit,
          textDecoration: .none,
        ),

        css('ul').styles(
          listStyle: .none,
        ),
      ],
      head: [
        link(
          href: 'images/Icon.svg',
          rel: 'icon',
        ),
        link(
          rel: 'stylesheet',
          href:
              'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=trending_flat',
        ),
      ],
      body: App(),
    ),
  );
}
