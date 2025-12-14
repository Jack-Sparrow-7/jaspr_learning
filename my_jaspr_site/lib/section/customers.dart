import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Customers extends StatelessComponent {
  const Customers({super.key});

  Component buildCustomersLogo({required String logo}) {
    return li(classes: 'customers__logo-wrapper', [
      img(classes: 'customers__logo-image', src: logo),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'customers', [
      div(classes: 'customers__content', [
        div(classes: 'customers__image-wrapper', [
          img(classes: 'customers__image', src: 'images/tesla.svg'),
        ]),
        div(classes: 'customers__details', [
          p(classes: 'customers__details-feedback', [
            .text('''
                  Maecenas dignissim justo eget nulla rutrum molestie. 
                  Maecenas lobortis sem dui, vel rutrum risus tincidunt 
                  ullamcorper. Proin eu enim metus. Vivamus sed libero 
                  ornare, tristique quam in, gravida enim. Nullam ut 
                  molestie arcu, at hendrerit elit. Morbi laoreet elit 
                  at ligula molestie, nec molestie mi blandit. Suspendisse 
                  cursus tellus sed augue ultrices, quis tristique nulla 
                  sodales. Suspendisse eget lorem eu turpis vestibulum 
                  pretium. Suspendisse potenti. Quisque malesuada enim 
                  sapien, vitae placerat ante feugiat eget. Quisque 
                  vulputate odio neque, eget efficitur libero condimentum 
                  id. Curabitur id nibh id sem dignissim finibus ac sit 
                  amet magna.
                  '''),
          ]),
          h4(classes: 'customers__details-name', [.text('Tim Smith')]),
          p(classes: 'customers__details-role', [.text('British Dragon Boat Racing Association')]),
          div(classes: 'customers__details-container', [
            ul(classes: 'customers__details-logos', [
              buildCustomersLogo(logo: 'images/customer1.svg'),
              buildCustomersLogo(logo: 'images/customer2.svg'),
              buildCustomersLogo(logo: 'images/customer3.svg'),
              buildCustomersLogo(logo: 'images/customer4.svg'),
              buildCustomersLogo(logo: 'images/customer5.svg'),
              buildCustomersLogo(logo: 'images/customer6.svg'),
            ]),
            a(classes: 'customers__details-button', href: '#', [
              .text('Meet all customers'),
              span(classes: 'material-symbols-outlined', [
                .text('trending_flat'),
              ]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Customers
    css('.customers').styles(
      display: .flex,
      margin: .only(bottom: 48.px),
      justifyContent: .center,
      backgroundColor: AppColors.silver,
    ),

    // Customers Content
    css('.customers__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px, vertical: 32.px),
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .column(74.px),
    ),

    // Customers Image Wrapper
    css('.customers__image-wrapper').styles(
      flex: .grow(1),
    ),

    // Customers Image
    css('.customers__image').styles(raw: {'object-fit': 'cover'}),

    // Customers Details
    css('.customers__details').styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .center,
      flex: .grow(2),
    ),

    // Customers Details Feedback
    css('.customers__details-feedback').styles(
      margin: .only(bottom: 16.px),
      color: AppColors.grey,
    ),

    // Customers Details Name
    css('.customers__details-name').styles(
      margin: .only(bottom: 8.px),
      color: AppColors.primary,
      fontSize: 20.px,
    ),

    // Customers Details Role
    css('.customers__details-role').styles(
      margin: .only(bottom: 32.px),
      color: AppColors.grey,
    ),

    // Customers Details Logos
    css(
      '.customers__details-logos',
    ).styles(
      display: .flex,
      justifyContent: .spaceBetween,
      alignItems: .center,
      flex: .auto,
    ),

    // Customers Details Container
    css('.customers__details-container').styles(
      display: .flex,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .column(32.px),
    ),

    // Customers Details Button
    css('.customers__details-button').styles(
      display: .flex,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .column(8.px),
      color: AppColors.primary,
    ),
  ];
}
