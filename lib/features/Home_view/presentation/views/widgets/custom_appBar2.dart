import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
