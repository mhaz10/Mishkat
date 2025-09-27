import 'package:go_router/go_router.dart';
import 'package:mishkat/features/onboard/views/get_started_view.dart';
import 'package:mishkat/features/onboard/views/onboarding_view.dart';

abstract class AppRoute {
  static const String kOnboardingView = '/';
  static const String kGetStartedView = '/GetStarted';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboardingView,
        name: 'OnboardingView',
        builder: (context, state) => OnboardingView(),
      ),

      GoRoute(
        path: kGetStartedView,
        name: 'GetStartedView',
        builder: (context, state) => GetStartedView(),
      ),
    ],
  );
}
