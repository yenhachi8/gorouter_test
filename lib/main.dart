import 'package:go_router_test/my_test/home.dart';

import 'app_lib.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const GoRouterTest());

class GoRouterTest extends StatelessWidget {
  const GoRouterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
        return HomeScreen();
      },
    )
  ],
);

class MyRoutes {
  static const String home = '/';
}
