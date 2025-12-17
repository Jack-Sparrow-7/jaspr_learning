import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_jaspr_site/components/app_footer.dart';
import 'package:my_jaspr_site/components/app_header.dart';
import 'package:my_jaspr_site/section/achievements.dart';
import 'package:my_jaspr_site/section/calender.dart';
import 'package:my_jaspr_site/section/clients.dart';
import 'package:my_jaspr_site/section/community.dart';
import 'package:my_jaspr_site/section/community_updates.dart';
import 'package:my_jaspr_site/section/customers.dart';
import 'package:my_jaspr_site/section/hero.dart';
import 'package:my_jaspr_site/section/unlock.dart';

class Landing extends StatelessComponent {
  const Landing({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'landing', [
      AppHeader(),
      Hero(),
      Clients(),
      Community(),
      Unlock(),
      Achievements(),
      Calender(),
      Customers(),
      CommunityUpdates(),
      AppFooter(),
    ]);
  }
}
