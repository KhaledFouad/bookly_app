import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home_view/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home_view/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> fetchBestSellerBooks();
  // Future<Either<Failure, List<Item>>> fetchBestSellerBooks();

  Future<Either<Failure, BookModel>> fetchBooks();
  // Future<Either<Failure, List<Item>>> fetchBooks();
}
