import 'package:circuit_electricial_box/features/mainflow/main_screen.dart';
import 'package:circuit_electricial_box/features/onboarding/onboarding_screen.dart';
import 'package:circuit_electricial_box/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

const splashRoute = "/";
const onboardingRoute = "/onboarding";
const mainFlowSceen = "/main";

final GoRouter appRoute = GoRouter(
  routes: [
    GoRoute(
        path: splashRoute, builder: (context, state) => const SplashScreen()),
    GoRoute(
        path: mainFlowSceen,
        builder: (context, state) => const MainFlowScreen()),
    GoRoute(
        path: onboardingRoute, builder: (context, state) => OnboardingScreen()),
  ],
);
