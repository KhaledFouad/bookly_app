import 'package:bookly_app/core/utilities/Styles.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/CustomListView.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/Custom_appbar.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/Custom_bestsller_listView.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),
              const Customlistview(),
              SizedBox(
                height: 1.5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: const Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomeBestsllerListview(),
        )
      ],
      physics: const BouncingScrollPhysics(),
    );
  }
}
