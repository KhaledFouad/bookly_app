import 'package:bookly_app/features/Home_view/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/failure.dart';
import '../../data/repository/home_repo.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit(this.homeRepo) : super(GetBooksInitial());

  static GetBooksCubit get(BuildContext context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  // BookModel? bookModel;
  Item? products;
  List<Item> newstProducts = [];

  Future<void> fetchBooks() async {
    emit(BooksLoadingState());
    Either<Failure, Item> result;
    result = await homeRepo.fetchBooks();
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
    result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(GetNewestBooksFailureState(failure.error));
    }, (newstProducts) {
      this.newstProducts = newstProducts;
      emit(GetNewestBooksSuccessState(newstProducts));
    });
  }
}
