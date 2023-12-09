import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_video/routes/route_names.dart';
import 'package:go_router_video/screens/Screen2Section1.dart';
import 'package:go_router_video/screens/Screen2Section2.dart';
import 'package:go_router_video/screens/error_screen.dart';
import 'package:go_router_video/screens/initial_screen.dart';
import 'package:go_router_video/screens/screen1.dart';
import 'package:go_router_video/screens/screen2.dart';
import 'package:go_router_video/screens/screen3.dart';

class RouteConfig {
  static GoRouter returnRouter() {
    return GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(
              path: "/",
              name: RouteNames.initial,
              pageBuilder: (context, state) {
                return const MaterialPage(child: InitialScreen());
              }),
          GoRoute(
              path: "/screen1",
              name: RouteNames.screen1,
              pageBuilder: (context, state) {
                return const MaterialPage(child: Screen1());
              }),
          GoRoute(
              path: "/screen2",
              name: RouteNames.screen2,
              pageBuilder: (context, state) {
                return const MaterialPage(child: Screen2());
              },
              routes: [
                GoRoute(
                    path: "section1",
                    name: RouteNames.screen2Section1,
                    pageBuilder: (context, state) {
                      return const MaterialPage(child: Screen2Section1());
                    }),
                GoRoute(
                    path: "section2",
                    name: RouteNames.screen2Section2,
                    pageBuilder: (context, state) {
                      return const MaterialPage(child: Screen2Section2());
                    }),
              ]),
          GoRoute(
              path: "/screen3/:name",
              name: RouteNames.screen3,
              pageBuilder: (context, state) {
                final name = state.pathParameters["name"];
                return MaterialPage(
                    child: Screen3(
                  name: name!,
                ));
              })
        ],
        errorPageBuilder: (context, state) {
          return const MaterialPage(child: ErrorScreen());
        });
  }
}
