import 'package:bookly_app/features/Home_view/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/failure.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit(this.HomeRepo) : super(GetBooksInitial());

  static GetBooksCubit get(BuildContext context) => BlocProvider.of(context);
  final HomeRepo;
  List<Item> products = [];
  List<Item> newstProducts = [];

  Future<void> getBooks() async {
    emit(BooksLoadingState());
    Either<Failure, List<Item>> result;
    result = await HomeRepo.getBooks();
    result.fold((failure) {
      emit(BooksFailureState(failure.error));
    }, (products) {
      this.products = products;
      emit(BooksSuccessState(products));
    });
  }

  Future<void> getNewstBooks() async {
    emit(GetNewestBooksLoadingState());
    Either<Failure, List<Item>> result;
    result = await HomeRepo.getBooks();
    result.fold((failure) {
      emit(GetNewestBooksFailureState(failure.error));
    }, (newstProducts) {
      this.newstProducts = newstProducts;
      emit(GetNewestBooksSuccessState(newstProducts));
    });
  }
}
