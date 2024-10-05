import 'package:bookly_app/features/Splash_view/presentation/views/widgets/splashViewBody.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashViewbody(),
      ),
    );
  }
}
