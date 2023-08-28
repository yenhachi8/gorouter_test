import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/base_example/page2.dart';
import 'package:go_router_test/base_example/page3.dart';
import 'package:go_router_test/base_example/page5.dart';
import 'package:go_router_test/main_base_exmaple.dart';

import 'page4.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, child) {
        return const MyHomePage(
          title: 'home',
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Page5(),
        ),
      ],
    ),
    GoRoute(
      path: '/page2/:id/:list',
      builder: (context, state) {
        print('aaa ${state.path}');
        print(state.pathParameters);
        print(state.extra);
        return const Page2();
      },
      routes: [
        GoRoute(
          path: 'page3',
          builder: (context, state) => const Page3(),
        ),
        GoRoute(
          path: 'page4',
          builder: (context, state) => const Page4(),
        ),
      ],
    ),
  ],
);
