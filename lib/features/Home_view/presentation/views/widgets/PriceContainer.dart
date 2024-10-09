import 'package:bookly_app/core/utilities/Styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utilities/constants.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 7.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 7.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.white, // Adjust the radius as needed
              ),

              // Adjust padding as needed
              child: Center(
                child: Text(
                    textAlign: TextAlign.center,
                    "19.99€",
                    style: Styles.textStyle18.copyWith(color: Colors.black)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 7.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: kSecondColor, // Adjust the radius as needed
              ),

              // padding: const EdgeInsets.all(20), // Adjust padding as needed
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Free preview",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
