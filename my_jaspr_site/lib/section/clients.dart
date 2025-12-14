import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Clients extends StatelessComponent {
  const Clients({super.key});

  Component buildClientLogo({required int num}) {
    return li(classes: 'clients__logo-wrapper', [
      img(classes: 'clients__logo-image', src: 'images/client_logo$num.svg'),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'clients', [
      div(classes: 'clients__content', [
        div(classes: 'clients__details', [
          h2(classes: 'clients__details-title', [.text('Our Clients')]),
          p(classes: 'clients__details-description', [.text('We have been working with some Fortune 500+ clients')]),
        ]),
        ul(classes: 'clients__logos', [
          buildClientLogo(num: 1),
          buildClientLogo(num: 2),
          buildClientLogo(num: 3),
          buildClientLogo(num: 4),
          buildClientLogo(num: 5),
          buildClientLogo(num: 6),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Clients
    css('.clients').styles(
      display: .flex,
      alignItems: .center,
    ),

    // Clients Content
    css('.clients__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px),
      margin: .symmetric(horizontal: .auto, vertical: 40.px),
      flexDirection: .column,
      gap: .row(24.px),
      flex: .grow(1),
    ),

    // Clients Details
    css('.clients__details').styles(
      display: .flex,
      flexDirection: .column,
      gap: .row(8.px),
      textAlign: .center,
    ),

    // Clients Details Title
    css('.clients__details-title').styles(
      color: AppColors.darkGrey,
    ),

    // Clients Details Description
    css('.clients__details-description').styles(
      color: AppColors.grey,
    ),

    // Clients Logos
    css('.clients__logos').styles(
      display: .flex,
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),
  ];
}
