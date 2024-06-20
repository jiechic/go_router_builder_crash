// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginRoute,
    ];

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'password',
          factory: $LoginPasswordRouteExtension._fromState,
        ),
      ],
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute(
        returnUrl: state.uri.queryParameters['return-url'],
      );

  String get location => GoRouteData.$location(
        '/login',
        queryParams: {
          if (returnUrl != null) 'return-url': returnUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginPasswordRouteExtension on LoginPasswordRoute {
  static LoginPasswordRoute _fromState(GoRouterState state) =>
      LoginPasswordRoute(
        returnUrl: state.uri.queryParameters['return-url'],
      );

  String get location => GoRouteData.$location(
        '/login/password',
        queryParams: {
          if (returnUrl != null) 'return-url': returnUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
