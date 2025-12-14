import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/colors/app_colors.dart';

class Achievements extends StatelessComponent {
  const Achievements({super.key});

  Component buildCountCard({required String icon, required String count, required String name}) {
    return li(classes: 'achievements__count-card', [
      img(classes: 'achievements__icon', src: icon),
      div(classes: 'achievements__card-details', [
        h3(classes: 'achievements__card-details-count', [.text(count)]),
        p(classes: 'achievements__card-details-name', [.text(name)]),
      ]),
    ]);
  }

  @override
  Component build(BuildContext context) {
    return section(classes: 'achievements', [
      div(classes: 'achievements__content', [
        div(classes: 'achievements__details', [
          h2(classes: 'achievements__details-title', [
            .text('Helping a local'),
          ]),
          h2(classes: 'achievements__details-title achievements__details-title--green', [
            .text('business reinvent itself'),
          ]),
          p(classes: 'achievements__details-description', [
            .text('We reached here with our hard work and dedication'),
          ]),
        ]),
        ul(classes: 'achievements__counts', [
          buildCountCard(
            icon: 'images/achievements_members.svg',
            count: "2,245,341",
            name: "Members",
          ),
          buildCountCard(
            icon: 'images/achievements_club.svg',
            count: "46,328",
            name: "ClubsMembers",
          ),
          buildCountCard(
            icon: 'images/achievements_events.svg',
            count: "828,867",
            name: "Event Bookings",
          ),
          buildCountCard(
            icon: 'images/achievements_payment.svg',
            count: "1,926,436",
            name: "Payments",
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    // Achievements
    css('.achievements').styles(
      // display: .flex,
      margin: .only(bottom: 48.px),
      backgroundColor: AppColors.silver,
    ),

    // Achievements Content
    css('.achievements__content').styles(
      display: .flex,
      maxWidth: 1440.px,
      padding: .symmetric(horizontal: 144.px, vertical: 64.px),
      margin: .symmetric(horizontal: .auto),
      justifyContent: .spaceBetween,
      alignItems: .center,
    ),

    // Achievements Details Title
    css('.achievements__details-title').styles(
      color: AppColors.darkGrey,
      fontSize: 36.px,
    ),
    css('.achievements__details-title--green').styles(
      margin: .only(bottom: 8.px),
      color: AppColors.primary,
    ),

    // Achievements Details Description
    css('.achievements__details-description').styles(
      color: AppColors.grey,
    ),

    // Achievements Counts
    css('.achievements__counts').styles(
      display: .grid,
      maxWidth: 540.px,
      justifyContent: .spaceBetween,
      gridTemplate: GridTemplate(
        columns: GridTracks([
          GridTrack(.auto),
          GridTrack(.auto),
        ]),
      ),
      gap: Gap(row: 40.px, column: 30.px),
      flex: .grow(1),
    ),

    // Achievements Count Card
    css('.achievements__count-card').styles(
      display: .flex,
      alignItems: .center,
      gap: .column(16.px),
    ),

    // Achievements Card Details Count
    css('.achievements__card-details-count').styles(
      color: AppColors.darkGrey,
    ),

    // Achievements Card Details Name
    css('.achievements__card-details-name').styles(
      color: AppColors.grey,
    ),
  ];
}
