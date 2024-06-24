import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final loginRoute = GoRoute(
    path: "/login",
    redirect: (context, state) {
      if ("/login" == state.uri.path) {
        return Uri(
                path: "/login/password",
                queryParameters: state.uri.queryParameters)
            .toString();
      }
      return null;
    },
    routes: [
      GoRoute(
          path: "password",
          builder: (
            context,
            state,
          ) {
            return TextButton(
              onPressed: () {},
              child: const Text("back on login-password"),
            );
          })
    ]);
