import 'package:go_router/go_router.dart';
import 'package:mishkat/features/auth/views/check_email_view.dart';
import 'package:mishkat/features/auth/views/login_view.dart';
import 'package:mishkat/features/auth/views/signup_view.dart';
import 'package:mishkat/features/onboard/views/get_started_view.dart';
import 'package:mishkat/features/onboard/views/onboarding_view.dart';

abstract class AppRoute {
  static const String kOnboardingView = '/';
  static const String kGetStartedView = '/GetStarted';
  static const String kSignupView = '/Signup';
  static const String kLoginView = '/Login';
  static const String kCheckEmailView = '/CheckEmail';

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

      GoRoute(
        path: kSignupView,
        name: 'SignupView',
        builder: (context, state) => SignupView(),
      ),

      GoRoute(
        path: kLoginView,
        name: 'LoginView',
        builder: (context, state) => LoginView(),
      ),

      GoRoute(
        path: kCheckEmailView,
        name: 'CheckEmailView',
        builder: (context, state) => CheckEmailView(),
      ),
    ],
  );
}
