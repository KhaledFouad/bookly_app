import 'package:bookly_app/features/Home_view/presentation/views/widgets/HomeViewBody.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
