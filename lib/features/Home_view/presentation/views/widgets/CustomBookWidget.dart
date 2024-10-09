import 'package:bookly_app/core/utilities/App_Assets.dart';
import 'package:flutter/material.dart';

class Custombookwidget extends StatelessWidget {
  final double height;
  final double width;
  const Custombookwidget(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.book1,
          ),
        ),
      ),
    );
  }
}
