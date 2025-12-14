import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'hero', [
      div(classes: 'hero__content', [
        div(classes: 'hero__details', [
          h1(classes: 'hero__details-title', [.text('Lessons and insights')]),
          h1(classes: 'hero__details-title hero__details-title--green', [.text('from 8 years')]),
          p(classes: 'hero__details-description', [
            .text('Where to grow your business as a photographer: site or social media?'),
          ]),
          a(classes: 'hero__details-button', href: '#', [.text('Register')]),
        ]),
        div(classes: 'hero__image-wrapper', [
          img(classes: 'hero__image', src: 'images/hero_illustration.svg'),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Hero
    css('.hero').styles(
      display: .flex,
      minHeight: .expression('calc(100vh - 99.5px)'),
      alignItems: .center,
      backgroundColor: AppColors.silver,
    ),

    // Hero Content
    css('.hero__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px),
      margin: .symmetric(horizontal: .auto),
      justifyContent: .spaceBetween,
      alignItems: .center,
      flex: .grow(1),
    ),

    // Hero Details
    css('.hero__details').styles(
      display: .flex,
      flexDirection: .column,
      flex: .grow(2),
    ),

    // Hero Image
    css('.hero__image-wrapper').styles(
      flex: .grow(1),
    ),
    css('.hero__image').styles(
      width: 100.percent,
      raw: {'object-fit': 'contain'},
    ),

    // Hero Details Title
    css('.hero__details-title').styles(
      color: AppColors.darkGrey,
      fontSize: 64.px,
    ),
    css('.hero__details-title--green').styles(
      padding: .only(bottom: 16.px),
      color: AppColors.primary,
      fontSize: 64.px,
    ),

    // Hero Details Description
    css('.hero__details-description').styles(
      padding: .only(bottom: 32.px),
      color: AppColors.grey,
    ),

    // Hero Details button
    css('.hero__details-button').styles(
      width: .fitContent,
      padding: .symmetric(
        vertical: 14.px,
        horizontal: 32.px,
      ),
      border: .none,
      radius: .circular(4.px),
      color: Colors.white,
      backgroundColor: AppColors.primary,
    ),
    css('.hero__details-button:hover').styles(
      cursor: .pointer,
    ),
  ];
}
