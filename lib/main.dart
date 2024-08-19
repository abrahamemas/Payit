import 'package:flutter/material.dart';
import 'package:payit/features/home/onboarding/onboarding_screen.dart';

void main() {
  runApp(const Payit());
}

class Payit extends StatelessWidget {
  const Payit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
