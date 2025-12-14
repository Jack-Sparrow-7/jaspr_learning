import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Community extends StatelessComponent {
  const Community({super.key});

  Component buildCommunityCard({required String icon, required String title, required String description}) {
    return li(classes: 'community__card', [
      div(classes: 'community__icon-wrapper', [
        img(
          classes: 'community__icon',
          src: icon,
        ),
      ]),
      h3(classes: 'community__card-title', [.text(title)]),
      p(classes: 'community__card-description', [.text(description)]),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'community', [
      div(classes: 'community__content', [
        div(classes: 'community__details', [
          h2(classes: 'community__details-title', [
            .text('Manage your entire community'),
            br(),
            .text('in a single system'),
          ]),
          p(classes: 'community__details-description', [
            .text('Who is Nextcent suitable for?'),
          ]),
        ]),
        ul(classes: 'community__container', [
          buildCommunityCard(
            icon: 'images/community_member.svg',
            title: 'Membership Organisations',
            description:
                'Our membership management software provides full automation of membership renewals and payments',
          ),
          buildCommunityCard(
            icon: 'images/community_national.svg',
            title: 'National Associations',
            description:
                'Our membership management software provides full automation of membership renewals and payments',
          ),
          buildCommunityCard(
            icon: 'images/community_class.svg',
            title: 'Clubs And Groups',
            description:
                'Our membership management software provides full automation of membership renewals and payments',
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Community
    css('.community').styles(
      display: .flex,
      padding: .only(bottom: 42.px),
      alignItems: .center,
    ),

    // Community Content
    css('.community__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: Spacing.symmetric(horizontal: 144.px),
      margin: Spacing.symmetric(horizontal: .auto),
      flexDirection: .column,
      justifyContent: .center,
      gap: .row(16.px),
      flex: .grow(1),
    ),

    // Community Details
    css('.community__details').styles(
      display: .flex,
      flexDirection: .column,
      gap: .row(8.px),
      textAlign: .center,
    ),

    // Community Details Title
    css('.community__details-title').styles(
      color: AppColors.darkGrey,
    ),

    // Community Details Description
    css('.community__details-description').styles(
      color: AppColors.grey,
    ),

    // Community Container
    css('.community__container').styles(
      display: .flex,
      justifyContent: .spaceBetween,
    ),

    // Community Card
    css('.community__card').styles(
      display: .flex,
      maxWidth: 300.px,
      padding: .all(32.px),
      flexDirection: .column,
      justifyContent: .start,
      alignItems: .center,
      gap: .row(8.px),
      textAlign: .center,
    ),

    // Community Card Title
    css('.community__card-title').styles(
      color: AppColors.darkGrey,
      fontSize: 28.px,
    ),

    // Community Card Description
    css('.community__card-description').styles(
      color: AppColors.grey,
    ),
  ];
}
