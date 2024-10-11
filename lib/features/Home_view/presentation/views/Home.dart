import 'package:bookly_app/features/Home_view/presentation/cubit/get_books_cubit.dart';
import 'package:bookly_app/features/Home_view/presentation/views/widgets/HomeViewBody.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    GetBooksCubit.get(context).fetchBooks();
    GetBooksCubit.get(context).getNewstBooks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
