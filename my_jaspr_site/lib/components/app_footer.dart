import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class AppFooter extends StatelessComponent {
  const AppFooter({super.key});

  Component buildSocialLink({required String image}) {
    return li(classes: 'app-footer__two-social-link', [
      a(href: '#', [
        img(src: 'images/$image.svg'),
      ]),
    ]);
  }

  Component buildLink({required String name}) {
    return li(classes: 'app-footer__two-link-text', [
      a(href: '#', [.text(name)]),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return footer(classes: 'app-footer', [
      div(classes: 'app-footer__one', [
        div(classes: 'app-footer__one-content', [
          h1(classes: 'app-footer__one-heading', [.text('Pellentesque suscipit fringilla libero eu.')]),
          a(classes: 'app-footer__one-button', href: '#', [
            .text('Get Started'),
            span(classes: 'material-symbols-outlined', [
              .text('trending_flat'),
            ]),
          ]),
        ]),
      ]),
      div(classes: 'app-footer__two', [
        div(classes: 'app-footer__two-content', [
          div(classes: 'app-footer__two-info', [
            img(src: 'images/Logo_white.svg'),
            div(classes: 'app-footer__two-copyright', [
              p([
                .text('Copyright © 2020 Nexcent ltd.'),
              ]),
              p([
                .text('All rights reserved'),
              ]),
            ]),
            ul(classes: 'app-footer__two-social-links', [
              buildSocialLink(image: 'instagram'),
              buildSocialLink(image: 'dribble'),
              buildSocialLink(image: 'twitter'),
              buildSocialLink(image: 'yt'),
            ]),
          ]),
          div(classes: 'app-footer__two-links', [
            div(classes: 'app-footer__two-col1', [
              h4(classes: 'app-footer__two-col1-header', [.text('Company')]),
              ul(classes: 'app-footer__two-link-container', [
                buildLink(name: 'About us'),
                buildLink(name: 'Blog'),
                buildLink(name: 'Contact us'),
                buildLink(name: 'Pricing'),
                buildLink(name: 'Testimonials'),
              ]),
            ]),
            div(classes: 'app-footer__two-col2', [
              h4(classes: 'app-footer__two-col2-header', [.text('Support')]),
              ul(classes: 'app-footer__two-link-container', [
                buildLink(name: 'Help center'),
                buildLink(name: 'Terms of service'),
                buildLink(name: 'Legal'),
                buildLink(name: 'Privacy policy'),
                buildLink(name: 'Status'),
              ]),
            ]),
            div(classes: 'app-footer__two-col3', [
              h4(classes: 'app-footer__two-col3-header', [.text('Stay up to date')]),
              input(
                classes: 'app-footer__two-email-field',
                type: .email,
                name: 'email-field',
                attributes: {'placeholder': 'Your email address'},
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // App Footer One
    css('.app-footer__one').styles(
      backgroundColor: AppColors.silver,
    ),

    // App Footer Two
    css('.app-footer__two').styles(
      backgroundColor: AppColors.black,
    ),

    // App Footer One Content
    css('.app-footer__one-content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(vertical: 32.px),
      margin: .symmetric(horizontal: .auto),
      flexDirection: .column,
      alignItems: .center,
      gap: .row(32.px),
    ),

    // App Footer Two Content
    css('.app-footer__two-content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(vertical: 64.px, horizontal: 144.px),
      margin: .symmetric(horizontal: .auto),
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .start,
    ),

    // App Footer One Heading
    css('.app-footer__one-heading').styles(
      maxWidth: 880.px,
      color: AppColors.black,
      textAlign: .center,
      fontSize: 64.px,
    ),

    // App Footer One Button
    css('.app-footer__one-button').styles(
      display: .flex,
      width: .fitContent,
      padding: .symmetric(vertical: 14.px, horizontal: 32.px),
      radius: .circular(4.px),
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .column(8.px),
      color: AppColors.white,
      backgroundColor: AppColors.primary,
    ),

    // App Footer Two Info
    css('.app-footer__two-info').styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .spaceBetween,
      alignItems: .start,
      gap: .row(40.px),
    ),

    // App Footer Two Copyright
    css('.app-footer__two-copyright').styles(
      display: .flex,
      flexDirection: .column,
      gap: .row(8.px),
      color: AppColors.silver,
    ),

    // App Footer Two social links
    css('.app-footer__two-social-links').styles(
      display: .flex,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      gap: .column(16.px),
    ),

    // App Footer Two Links
    css('.app-footer__two-links').styles(
      display: .flex,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .start,
      gap: .column(30.px),
    ),

    // App Footer Two Cols
    css('.app-footer__two-col1,.app-footer__two-col2,.app-footer__two-col3').styles(
      display: .flex,
      flexDirection: .column,
      gap: .row(24.px),
    ),

    // App Footer Two Col Header
    css('.app-footer__two-col1-header,.app-footer__two-col2-header,.app-footer__two-col3-header').styles(
      color: Colors.white,
      fontSize: 20.px,
    ),

    // App Footer Two Link Container
    css('.app-footer__two-link-container').styles(
      display: .flex,
      flexDirection: .column,
      gap: .row(16.px),
    ),

    // App Footer Two Link Text
    css('.app-footer__two-link-text').styles(
      color: AppColors.silver,
    ),

    // App Footer Two email field
    css('.app-footer__two-email-field').styles(
      padding: .symmetric(vertical: 12.px, horizontal: 16.px),
      border: .none,
      radius: .circular(8.px),
      color: AppColors.white,
      backgroundColor: AppColors.grey,
    ),
    css('.app-footer__two-email-field::placeholder').styles(
      opacity: 1,
      color: AppColors.silver,
    ),
  ];
}
