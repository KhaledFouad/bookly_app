import 'package:bookly_app/core/Api/end_points.dart';
import 'package:bookly_app/core/Api/service.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/Home_view/data/models/book_model/item.dart';
import 'package:bookly_app/features/Home_view/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReopImplementaion implements HomeRepo {
  final ApiServices apiServices;

  HomeReopImplementaion({required this.apiServices});

  @override
  Future<Either<Failure, List<Item>>> fetchBestSellerBooks() async {
    try {
      Response data = await apiServices.get(endPoint: EndPoints.getNewstBooks);

      return Right((data.data['items'] as List<dynamic>).map((product) {
        return Item.fromJson(product);
      }).toList());
    } on Exception catch (error) {
      if (error is DioException) {
        return Left(ServerFailure(error.response!.data['message'].toString()));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, Item>> fetchBooks() async {
    try {
      Response data = await apiServices.get(
        endPoint: EndPoints.getBooks,
      );
      return Right(Item.fromJson(data.data['items']));
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure(error.response!.data['message'].toString()));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }
}
