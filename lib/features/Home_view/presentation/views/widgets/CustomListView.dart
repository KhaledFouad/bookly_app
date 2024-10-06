import 'package:bookly_app/features/Home_view/presentation/views/widgets/CustomBookWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Customlistview extends StatelessWidget {
  const Customlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: const Custombookwidget(),
          );
        },
      ),
    );
  }
}
