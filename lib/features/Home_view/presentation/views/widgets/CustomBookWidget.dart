import 'package:bookly_app/core/utilities/App_Assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custombookwidget extends StatelessWidget {
  const Custombookwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 35.w,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.book1,
          ),
        ),
      ),
    );
  }
}
