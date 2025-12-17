import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class CommunityUpdates extends StatelessComponent {
  const CommunityUpdates({super.key});

  Component buildCommunityUpdatesCard({required String image, required String cardContent}) {
    return li(classes: 'community-updates__card', [
      img(classes: 'community-updates__card-image', src: image),
      div(classes: 'community-updates__card-content', [
        p(classes: 'community-updates__card-text', [.text(cardContent)]),
        a(classes: 'community-updates__card-button', href: '#', [
          .text('Readmore'),
          span(classes: 'material-symbols-outlined', [
            .text('trending_flat'),
          ]),
        ]),
      ]),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'community-updates', [
      div(classes: 'community-updates__content', [
        div(classes: 'community-updates__details', [
          h2(classes: 'community-updates__details-title', [
            .text('Caring is the new marketing'),
          ]),
          p(classes: 'community-updates__details-description', [
            .text('''The Nexcent blog is the best place to read about 
          the latest membership insights, trends and more. See who's 
          joining the community, read about how our community are 
          increasing their membership income and lot's more.​'''),
          ]),
        ]),
        ul(classes: 'community-updates__cards', [
          buildCommunityUpdatesCard(
            image: 'images/cu1.svg',
            cardContent: 'Creating Streamlined Safeguarding Processes with OneRen',
          ),
          buildCommunityUpdatesCard(
            image: 'images/cu2.svg',
            cardContent: 'What are your safeguarding responsibilities and how can you manage them?',
          ),
          buildCommunityUpdatesCard(
            image: 'images/cu3.svg',
            cardContent: 'Revamping the Membership Model with Triathlon Australia',
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Community Updates
    css('.community-updates').styles(
      margin: .only(
        bottom: 95.px,
      ),
      // justifyContent: .center,
    ),

    // Community Updates Content
    css(".community-updates__content").styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px),
      margin: .symmetric(horizontal: .auto),
      flexDirection: .column,
      alignItems: .center,
      gap: .row(16.px),
    ),

    // Community Updates Details
    css('.community-updates__details').styles(
      display: .flex,
      maxWidth: 640.px,
      flexDirection: .column,
      gap: .row(8.px),
      textAlign: .center,
    ),

    // Community Updates Details Title
    css('.community-updates__details-title').styles(
      color: AppColors.darkGrey,
      fontSize: 36.px,
    ),

    // Community Updates Details Description
    css('.community-updates__details-description').styles(
      color: AppColors.grey,
    ),

    // Community Updates Cards
    css('.community-updates__cards').styles(
      display: .flex,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .start,
      gap: .column(24.px),
    ),

    // Community Updates Card
    css(
      '.community-updates__card',
    ).styles(
      display: .flex,
      flexDirection: .column,
      justifyContent: .start,
      alignItems: .center,
    ),

    // Community Updates Cards
    css('.community-updates__card-content').styles(
      display: .flex,
      maxWidth: 320.px,
      padding: .all(16.px),
      margin: .fromLTRB(26.px, (-80).px, 26.px, .zero),
      radius: .circular(8.px),
      shadow: BoxShadow(
        offsetX: .zero,
        offsetY: 8.px,
        blur: 16.px,
        spread: .zero,
        color: Color('#ABBED1').withOpacity(.4),
      ),
      flexDirection: .column,
      alignItems: .center,
      gap: .row(16.px),
      textAlign: .center,
      backgroundColor: AppColors.silver,
    ),

    // Community Updates Card Button
    css('.community-updates__card-button').styles(
      display: .flex,
      width: .fitContent,
      flexDirection: .row,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .column(8.px),
      color: AppColors.primary,
    ),
  ];
}
