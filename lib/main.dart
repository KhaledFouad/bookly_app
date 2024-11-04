import 'package:bookly_app/core/Api/service_implementaiton.dart';
import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:bookly_app/core/utilities/constants.dart';
import 'package:bookly_app/features/Home_view/data/repository/home_reop_implementaion.dart';
import 'package:bookly_app/features/Home_view/presentation/cubit/get_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetBooksCubit(
              HomeReopImplementaion(
                apiServices: ApiServicesImplementation(),
              )..fetchBestSellerBooks(),
            ),
          ),
          BlocProvider(
            create: (context) => GetBooksCubit(
              HomeReopImplementaion(
                apiServices: ApiServicesImplementation(),
              )..fetchBooks(),
            ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
          debugShowCheckedModeBanner: false,
        ),
      );
    });
  }
}
