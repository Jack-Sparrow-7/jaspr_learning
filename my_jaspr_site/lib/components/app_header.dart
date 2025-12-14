import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class AppHeader extends StatelessComponent {
  const AppHeader({super.key});

  Component buildNavMenuItem({required String name, bool isActive = false}) {
    return li(classes: 'app-header__nav-menu-item ${isActive ? 'app-header__nav-menu-item--active' : ''}', [
      a(href: '#', [.text(name)]),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return header(classes: 'app-header', [
      div(classes: 'app-header__content', [
        div(classes: 'app-header__logo', [img(classes: "app-header__logo-img", src: 'images/Logo.svg')]),
        nav(classes: 'app-header__nav', [
          ul(classes: 'app-header__nav-menu', [
            buildNavMenuItem(
              name: 'Home',
              isActive: true,
            ),
            buildNavMenuItem(name: 'Service'),
            buildNavMenuItem(name: 'Feature'),
            buildNavMenuItem(name: 'Product'),
            buildNavMenuItem(name: 'Testimonial'),
            buildNavMenuItem(name: 'FAQ'),
          ]),
        ]),
        div(classes: 'app-header__auth-buttons', [
          a(
            classes: 'app-header__auth-button app-header__auth-button--login',
            href: '#',
            [.text("Login")],
          ),
          a(
            classes: 'app-header__auth-button app-header__auth-button--signup',
            href: '#',
            [.text("Sign up")],
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Header
    css('.app-header').styles(
      backgroundColor: AppColors.silver,
    ),
    css('.app-header__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 100.px, vertical: 30.px),
      margin: .symmetric(horizontal: .auto, vertical: .zero),
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),

    // Nav Menu
    css('.app-header__nav-menu').styles(
      display: .flex,
      gap: .column(50.px),
    ),

    // Auth Buttons
    css('.app-header__auth-buttons').styles(
      display: .flex,
      gap: .column(14.px),
    ),

    // Auth button
    css('.app-header__auth-button').styles(
      padding: .symmetric(horizontal: 20.px, vertical: 10.px),
      border: .none,
      radius: .circular(6.px),
    ),
    css('.app-header__auth-button:hover').styles(
      cursor: .pointer,
    ),
    css('.app-header__auth-button--login').styles(
      color: AppColors.primary,
      backgroundColor: Colors.transparent,
    ),
    css('.app-header__auth-button--signup').styles(
      color: AppColors.white,
      backgroundColor: AppColors.primary,
    ),

    // Nav Menu Item Active
    css('.app-header__nav-menu-item--active').styles(
      fontWeight: .bold,
    ),
  ];
}
