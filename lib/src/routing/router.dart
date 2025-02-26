import 'package:cop30_bel/src/routing/routes.dart';
import 'package:cop30_bel/src/ui/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router() {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}
