import 'dart:convert';

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
            name: 'settings',
            path: 'settings/:name',
            builder: (context, state) {
              if (kDebugMode) {
                // final map = state.extra as Map;
                // print('map= ${map.runtimeType}, ${map['name']}');
                // print('name= ${state.pathParameters['name'].runtimeType}');
                // print('obj= ${(map['name'] as Parking).name}');

                print(
                    'settint= ${state.namedLocation('settings', pathParameters: {
                      'name': 'nn',
                    }, queryParameters: {
                      'filter': 'fil'
                    })}');
              }
              final title = state.pathParameters['name'] ?? 'no name';
              return SettingsPage(
                title: title,
              );
            },
          ),
        ]),
  ],
);

class MyRoutes {
  static const String home = '/';
  static const String login = '/login';
}
