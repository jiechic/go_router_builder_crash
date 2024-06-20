import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final homeRoute = GoRoute(
    path: "/",
    builder: (context,
        state,) {
      return const Text("root");
    },
    routes: [
      GoRoute(
          path: "me",
          builder: (context,
              state,) {
            return const Text("/me");
          })
    ]);
