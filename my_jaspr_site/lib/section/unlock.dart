import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Unlock extends StatelessComponent {
  const Unlock({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'unlock', [
      div(classes: 'unlock__content', [
        div(classes: 'unlock__image-wrapper', [
          img(classes: 'unlock__image', src: 'images/unlock.svg'),
        ]),
        div(classes: 'unlock__details', [
          h2(classes: 'unlock__details-title', [.text('The unseen of spending three years at Pixelgrade')]),
          p(classes: 'unlock__details-description', [
            .text('''
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Sed sit amet justo ipsum. Sed accumsan quam vitae est varius
         fringilla. Pellentesque placerat vestibulum lorem sed porta. 
         Nullam mattis tristique iaculis. Nullam pulvinar sit amet risus
          pretium auctor. Etiam quis massa pulvinar, aliquam quam vitae,
           tempus sem. Donec elementum pulvinar odio.
        '''),
          ]),
          a(classes: 'unlock__details-button', href: '#', [.text('Learn More')]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Unlock
    css('.unlock').styles(
      display: .flex,
      padding: .only(bottom: 48.px),
      alignItems: .center,
    ),

    // Unlock Content
    css('.unlock__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px),
      margin: .symmetric(horizontal: .auto),
      justifyContent: .spaceBetween,
      alignItems: .center,
      flex: .grow(1),
    ),

    // Unlock Image Wrapper
    css('.unlock__image-wrapper').styles(
      flex: .grow(1),
    ),

    // Unlock Details
    css('.unlock__details').styles(
      display: .flex,
      flexDirection: .column,
      flex: .grow(2),
    ),

    // Unlock Details Title
    css('.unlock__details-title').styles(
      padding: .only(bottom: 16.px),
      color: AppColors.darkGrey,
      fontSize: 36.px,
    ),

    // Unlock Details Description
    css('.unlock__details-description').styles(
      padding: .only(bottom: 32.px),
      color: AppColors.grey,
    ),

    // Unlock Details Button
    css('.unlock__details-button').styles(
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
