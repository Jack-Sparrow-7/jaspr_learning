import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Calender extends StatelessComponent {
  const Calender({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'calender', [
      div(classes: 'calender__content', [
        div(classes: 'calender__image-wrapper', [
          img(classes: 'calender__image', src: 'images/calender.svg'),
        ]),
        div(classes: 'calender__details', [
          h2(classes: 'calender__details-title', [
            .text('How to design your site footer like we did'),
          ]),
          p(classes: 'calender__details-description', [
            .text('''
                  Donec a eros justo. Fusce egestas tristique ultrices. 
                  Nam tempor, augue nec tincidunt molestie, massa nunc 
                  varius arcu, at scelerisque elit erat a magna. Donec 
                  quis erat at libero ultrices mollis. In hac habitasse 
                  platea dictumst. Vivamus vehicula leo dui, at porta 
                  nisi facilisis finibus. In euismod augue vitae nisi 
                  ultricies, non aliquet urna tincidunt. Integer in 
                  nisi eget nulla commodo faucibus efficitur quis massa. 
                  Praesent felis est, finibus et nisi ac, hendrerit 
                  venenatis libero. Donec consectetur faucibus ipsum id gravida.
                  '''),
          ]),
          a(classes: 'calender__details-button', href: '#', [.text('Learn More')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Calender
    css('.calender').styles(
      display: .flex,
      margin: .only(bottom: 48.px),
      justifyContent: .center,
    ),

    // Calender Content
    css('.calender__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px),
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),

    // Calender Image Wrapper
    css('.calender__image-wrapper').styles(
      flex: .grow(1),
    ),

    // Calender Details
    css('.calender__details').styles(
      display: .flex,
      flexDirection: .column,
      flex: .grow(1.5),
    ),

    // Calender Details Title
    css('.calender__details-title').styles(
      margin: .only(bottom: 16.px),
      color: AppColors.darkGrey,
      fontSize: 36.px,
    ),

    // Calender Details Description
    css('.calender__details-description').styles(
      margin: .only(bottom: 32.px),
      color: AppColors.grey,
    ),

    // Calender Details Button
    css('.calender__details-button').styles(
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
  ];
}
