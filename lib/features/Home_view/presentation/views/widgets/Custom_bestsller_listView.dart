import 'package:bookly_app/features/Home_view/presentation/views/widgets/best_sellerBook.dart';
import 'package:flutter/material.dart';

class CustomeBestsllerListview extends StatelessWidget {
  const CustomeBestsllerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 100.h,
      // width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return const BestSellerbook();
        },
      ),
    );
  }
}
