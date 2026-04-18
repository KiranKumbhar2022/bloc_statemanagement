import 'package:bloc_statemanagement/pages/counter_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/",
  routes: [GoRoute(path: "/", builder: (context, state) => CounterPage())],
);
