import 'package:bookly_app/core/utilities/app_assets.dart';
import 'package:bookly_app/features/Splash_view/presentation/views/widgets/SlidingTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    initSlidingAnimation();
    animatedTransition();
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
        ),
        const SizedBox(
          height: 5,
        ),

        //hello world
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void animatedTransition() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // these two ways for navigation in go router :
        GoRouter.of(context).push('/home');
        // context.go('/home');

        //   the navigation way by get :
        // Get.to(() => const HomeScreen(),
        //     transition: Transition.fade, duration: const Duration(seconds: 2));
      },
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
}
