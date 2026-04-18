import 'package:bloc_statemanagement/go_router/route_name.dart';
import 'package:bloc_statemanagement/pages/counter_page.dart';
import 'package:bloc_statemanagement/pages/switch_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteName.initialRoute,
  routes: [
    GoRoute(
      name: "CounterPage",
      path: RouteName.initialRoute, builder: (context, state) => CounterPage()),
    GoRoute(
      name: "SwitchPage",
      path: RouteName.switchPage, builder: (context, state) => SwitchPage()),
  ],
);
