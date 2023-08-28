import 'package:go_router_test/my_test/home.dart';

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
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
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

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Settings"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go("/"),
          child: const Text("Go to home page"),
        ),
      ),
    );
  }
}
