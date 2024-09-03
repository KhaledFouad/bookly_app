import 'package:bookly_app/core/utilities/App_Assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Free Your Mind 📖",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
