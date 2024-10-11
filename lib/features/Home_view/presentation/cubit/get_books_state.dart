part of 'get_books_cubit.dart';

@immutable
sealed class GetBooksState {}

final class GetBooksInitial extends GetBooksState {}

class BooksLoadingState extends GetBooksState {}

class BooksSuccessState extends GetBooksState {
  final Item products;

  BooksSuccessState(this.products);
}

class BooksFailureState extends GetBooksState {
  final String error;

  BooksFailureState(this.error);
}

final class GetNewestBooksInitial extends GetBooksState {}

class GetNewestBooksLoadingState extends GetBooksState {}

class GetNewestBooksSuccessState extends GetBooksState {
  final List<Item> newstProductsproducts;

  GetNewestBooksSuccessState(this.newstProductsproducts);
}

class GetNewestBooksFailureState extends GetBooksState {
  final String error;

  GetNewestBooksFailureState(this.error);
}
