import 'package:go_router/go_router.dart';
import 'package:go_router_demo/src/module/home/home_route.dart';

import 'package:go_router_demo/src/module/login/login_route.dart';

var isLogin = false;

final goRouter = GoRouter(
  routes: [
    homeRoute,
    loginRoute,
  ],
  redirect: (context, state) async {
    ///is login path ,do not redirect
    if (state.matchedLocation.contains((loginRoute).path) == true) {
      return null;
    }
    if (!isLogin) {
      return Uri(
        path: "/login",
        queryParameters: {"return-url": state.uri.toString()},
      ).toString();
    }
  },
);
