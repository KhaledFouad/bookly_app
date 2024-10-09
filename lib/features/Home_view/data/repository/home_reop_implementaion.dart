import 'package:bookly_app/core/Api/end_points.dart';
import 'package:bookly_app/core/Api/service.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home_view/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home_view/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReopImplementaion implements HomeRepo {
  final ApiServices apiServices;

  HomeReopImplementaion({required this.apiServices});

  @override
  Future<Either<Failure, BookModel>> fetchBestSellerBooks() async {
    try {
      Response data = await apiServices.get(endPoint: EndPoints.getNewstBooks);

      return right(BookModel.fromJson(data.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure(e.response!.data['message'].toString()));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchBooks() async {
    try {
      Response data = await apiServices.get(endPoint: EndPoints.getBooks);

      return right(BookModel.fromJson(data.data));
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure(e.response!.data['message'].toString()));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
