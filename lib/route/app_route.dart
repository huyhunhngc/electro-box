import 'package:circuit_electricial_box/features/collection/collection_screen.dart';
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
        GoRoute(
          path: homeRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const HomeScreen(),
          routes: [],
        ),
        // Collection tab and its detail pages
        GoRoute(
          path: collectionRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const CollectionScreen(),
          routes: [],
        ),
        // Settings tab and its detail pages
        GoRoute(
          path: settingsRoute,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => const SettingScreen(),
          routes: [],
        ),
      ],
    ),
  ],
);
