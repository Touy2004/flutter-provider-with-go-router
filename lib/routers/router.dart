import 'package:provider_test/packages.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => AddPage(),
    ),
    GoRoute(
      path: '/edit/:index',
      builder: (context, state) => EditPage(index: int.parse(state.pathParameters["index"]!)),
    ),
  ],
);
