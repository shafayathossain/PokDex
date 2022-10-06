import 'package:go_router/go_router.dart';
import 'package:pokemon_index/features/home/page/home_page.dart';

import 'app_routes.dart';



class AppPages {
  AppPages._();

  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Paths.HOME,
    routes: <GoRoute>[
      GoRoute(
          name: Routes.HOME,
          path: Paths.HOME,
          builder: (context, state) => HomePage()),
    ],
  );
}
