import 'package:circuit_electricial_box/features/collection/collection_screen.dart';
import 'package:circuit_electricial_box/features/collection/pages/search/search_screen.dart';
import 'package:circuit_electricial_box/features/home/home_screen.dart';
import 'package:circuit_electricial_box/features/mainflow/main_screen.dart';
import 'package:circuit_electricial_box/features/onboarding/onboarding_screen.dart';
import 'package:circuit_electricial_box/features/settings/setting_screen.dart';
import 'package:circuit_electricial_box/features/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

const splashRoute = "/";
const onboardingRoute = "/onboarding";
const homeRoute = "/home";
const settingsRoute = "/settings";
const collectionRoute = "/collection";
const searchRoute = "/search";

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRoute = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: splashRoute,
  routes: [
    GoRoute(
        path: splashRoute, builder: (context, state) => const SplashScreen()),
    GoRoute(
        path: onboardingRoute, builder: (context, state) => OnboardingScreen()),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainFlowScreen(child: child),
      routes: [
        // Home tab and its detail pages
        FadeGoRoute(
          path: homeRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const HomeScreen(),
          routes: [],
        ),
        // Collection tab and its detail pages
        FadeGoRoute(
          path: collectionRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const CollectionScreen(),
          routes: [
            FadeGoRoute(
              path: "$searchRoute/:parentId",
              name: searchRoute,
              builder: (context, state) {
                final parentId = state.pathParameters['parentId'];
                if (parentId == null) {
                  return const Center(child: Text("Invalid Parent ID"));
                }
                return SearchScreen(parentId: parentId);
              },
            )
          ],
        ),
        // Settings tab and its detail pages
        FadeGoRoute(
          path: settingsRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const SettingScreen(),
          routes: [],
        ),
      ],
    ),
  ],
);

// ignore: non_constant_identifier_names
GoRoute FadeGoRoute(
    {required String path,
    required Widget Function(BuildContext, GoRouterState) builder,
    String? name,
    GlobalKey<NavigatorState>? parentNavigatorKey,
    List<RouteBase> routes = const <RouteBase>[]}) {
  return GoRoute(
    path: path,
    name: name,
    parentNavigatorKey: parentNavigatorKey,
    routes: routes,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 300),
      child: builder(context, state),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        );
      },
    ),
  );
}
