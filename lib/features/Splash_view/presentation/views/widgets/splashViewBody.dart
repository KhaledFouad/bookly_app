import 'package:bookly_app/core/utilities/App_Assets.dart';
import 'package:bookly_app/features/Splash_view/presentation/views/widgets/SlidingTextWidget.dart';
import 'package:flutter/material.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppAssets.logo,
          // height: 30,
          // width: 30,
        ),
        const SizedBox(
          height: 5,
        ),

        //hello world
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
