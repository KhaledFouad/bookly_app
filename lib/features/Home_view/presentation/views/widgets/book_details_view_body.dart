import 'package:bookly_app/core/utilities/Styles.dart';
import 'package:bookly_app/core/utilities/custom_error_widget.dart';
import 'package:bookly_app/core/utilities/loding_indicator.dart';
import 'package:bookly_app/features/Home_view/presentation/cubit/get_books_cubit.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/BookDetailsWidget.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/CustomBookWidget.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/PriceContainer.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/custom_appBar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbar2(),
        Align(
          alignment: Alignment.center,
          child: Custombookwidget(
            height: 30.h,
            width: 40.w,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        const BookDetailsWidget(),
        SizedBox(
          height: 1.5.h,
        ),
        const Center(child: PriceContainer()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
          child: const Text(
            "You can also like",
            style: Styles.textStyle14,
          ),
        ),
        BlocBuilder<GetBooksCubit, GetBooksState>(builder: (context, state) {
          if (state is BooksSuccessState) {
            return SizedBox(
              height: 20.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Custombookwidget(height: 20.h, width: 22.w),
                ),
              ),
            );
          } else if (state is BooksFailureState) {
            print(state.error.toString());

            return CustomErrorWidget(
              errMessage: state.error,
            );
          } else {
            return const CustomLoadingIndicator();
          }
        })
      ],
    );
  }
}
