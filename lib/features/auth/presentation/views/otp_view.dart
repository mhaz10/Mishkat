import 'package:flutter/material.dart';
import 'package:mishkat/features/auth/presentation/views/widgets/otp_view_body.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpViewBody(),
    );
  }
}
