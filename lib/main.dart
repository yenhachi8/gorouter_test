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
          print('full path= ${fullPath}');
          return HomePage();
        },
        routes: [
          GoRoute(
            path: 'settings',
            builder: (context, state) {
              return const SettingsPage();
            },
          ),
        ]),

    // GoRoute(
    //   path: MyRoutes.login,
    //   builder: (context, state) {
    //     final fullPath = state.fullPath;
    //     print('full path= ${fullPath}');
    //     return HomeScreen();
    //   },
    // ),
  ],
);

class MyRoutes {
  static const String home = '/';
  static const String login = '/login';
}
