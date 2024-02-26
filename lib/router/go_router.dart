import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persist_nav/presentation/welcome.dart';
import 'package:persist_nav/router/rote_names.dart';
import '../presentation/scaffoldnav.dart';
import '../presentation/screen_a.dart';
import '../presentation/screen_b.dart';
import '../presentation/screen_c.dart';

  final rootNavKey = GlobalKey<NavigatorState>(debugLabel: 'rootNav');
  final router = GoRouter(navigatorKey: rootNavKey, routes: [
    GoRoute(
        path: RoutePath.initial.path,
        name: RoutePath.initial.name,
        pageBuilder: (context, state) => MaterialPage(child: WelcomeScreen()),
        routes: [
          StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) =>
                  ScaffoldWithNavBar(navigationShell: navigationShell),
              branches: [
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                    path: RoutePath.screenA.path,
                    name: RoutePath.screenA.name,
                    pageBuilder: (context, state) =>
                        MaterialPage(child: ScreenA()),
                  ),
                ]),
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                    path: RoutePath.screenB.path,
                    name: RoutePath.screenB.name,
                    pageBuilder: (context, state) =>
                        MaterialPage(child: ScreenB()),
                  ),
                ]),
                StatefulShellBranch(routes: <RouteBase>[
                  GoRoute(
                    path: RoutePath.screenC.path,
                    name: RoutePath.screenC.name,
                    pageBuilder: (context, state) =>
                        MaterialPage(child: ScreenC()),
                  ),
                ]),
              ]),
        ]),
  ]);
