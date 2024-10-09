import 'package:bookly_app/core/utilities/Styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utilities/constants.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 15.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            // width: 60.w,
            child: Text(
              "The Jungle Book ",
              overflow: TextOverflow.ellipsis,
              // textAlign: TextAlign.left,
              maxLines: 2,
              style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            // textAlign: TextAlign.left,
            "Rudyard Kipling",
            style: Styles.textStyle14
                .copyWith(color: const Color.fromARGB(255, 181, 180, 180)),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_rate_rounded,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 3.5.w,
              ),
              const Text("4.8", style: Styles.textStyle14),
              SizedBox(
                width: 2.w,
              ),
              Text(
                "(2304)",
                style: Styles.textStyle14
                    .copyWith(color: const Color.fromARGB(255, 181, 180, 180)),
              )
            ],
          )
        ],
      ),
    );
  }
}
