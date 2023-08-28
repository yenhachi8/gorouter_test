import 'package:flutter/foundation.dart';
import 'package:go_router_test/my_test/home.dart';
import 'package:go_router_test/my_test/settings.dart';

import 'app_lib.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const GoRouterTest());

class GoRouterTest extends StatelessWidget {
  const GoRouterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Title Go Router',
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
        path: MyRoutes.home,
        builder: (context, state) {
          final fullPath = state.fullPath;
          if (kDebugMode) {
            print('full path= $fullPath');
          }
          return const HomePage();
        },
        routes: [
          GoRoute(
            path: 'settings',
            builder: (context, state) {
              return const SettingsPage();
            },
          ),
        ]),
  ],
);

class MyRoutes {
  static const String home = '/';
  static const String login = '/login';
}
