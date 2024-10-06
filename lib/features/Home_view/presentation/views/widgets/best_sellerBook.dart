import 'package:bookly_app/core/utilities/App_Assets.dart';
import 'package:bookly_app/core/utilities/Styles.dart';
import 'package:bookly_app/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BestSellerbook extends StatelessWidget {
  const BestSellerbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 20.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.book1,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            height: 14.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.w,
                  child: Text(
                    "The Jungle Book ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  "Rudyard Kipling",
                  style: Styles.textStyle14.copyWith(
                      color: const Color.fromARGB(255, 181, 180, 180)),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text("19.99 €", style: Styles.textStyle16),
                    SizedBox(
                      width: 4.4.w,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 0.3.w,
                    ),
                    Text("4.8", style: Styles.textStyle14),
                    SizedBox(
                      width: 0.9.w,
                    ),
                    Text(
                      "(2304)",
                      style: Styles.textStyle14.copyWith(
                          color: const Color.fromARGB(255, 181, 180, 180)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
