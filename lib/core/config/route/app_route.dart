import 'package:go_router/go_router.dart';
import 'package:mishkat/features/auth/presentation/views/check_email_view.dart';
import 'package:mishkat/features/auth/presentation/views/done_reset_new_password_view.dart';
import 'package:mishkat/features/auth/presentation/views/forget_password_view.dart';
import 'package:mishkat/features/auth/presentation/views/login_view.dart';
import 'package:mishkat/features/auth/presentation/views/otp_view.dart';
import 'package:mishkat/features/auth/presentation/views/set_new_password_view.dart';
import 'package:mishkat/features/auth/presentation/views/signup_view.dart';
import 'package:mishkat/features/onboard/views/get_started_view.dart';
import 'package:mishkat/features/onboard/views/onboarding_view.dart';

abstract class AppRoute {
  static const String kOnboardingView = '/';
  static const String kGetStartedView = '/GetStarted';
  static const String kSignupView = '/Signup';
  static const String kLoginView = '/Login';
  static const String kCheckEmailView = '/CheckEmail';
  static const String kForgetPasswordView = '/ForgetPassword';
  static const String kOtpView = '/Otp';
  static const String kSetNewPasswordView = '/SetNewPassword';
  static const String kDoneResetPasswordView = '/DoneResetPassword';

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

      GoRoute(
        path: kForgetPasswordView,
        name: 'ForgetPasswordView',
        builder: (context, state) => ForgetPasswordView(),
      ),

      GoRoute(
        path: kSetNewPasswordView,
        name: 'SetNewPasswordView',
        builder: (context, state) => SetNewPasswordView(),
      ),

      GoRoute(
        path: kDoneResetPasswordView,
        name: 'DoneResetPasswordView',
        builder: (context, state) => DoneResetNewPasswordView(),
      ),
    ],
  );
}
