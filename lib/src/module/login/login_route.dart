import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'login_route.g.dart';

@TypedGoRoute<LoginRoute>(
  path: '/login',
  routes: [
    TypedGoRoute<LoginPasswordRoute>(
      path: "password",
    ),
  ],
)
class LoginRoute extends GoRouteData {
  String? returnUrl;

  LoginRoute({
    this.returnUrl,
  });


  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    if (Uri.parse(location).path == state.uri.path) {
      return Uri(
              path: "/login/password",
              queryParameters: state.uri.queryParameters)
          .toString();
    }
    return null;
  }
}

class LoginPasswordRoute extends GoRouteData {
  String? returnUrl;

  LoginPasswordRoute({
    this.returnUrl,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TextButton(
      onPressed: () {

      },
      child: const Text("back on login-password"),
    );
  }
}


