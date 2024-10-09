// ignore_for_file: avoid_print

import 'package:bookly_app/core/Api/end_points.dart';
import 'package:bookly_app/core/Api/service.dart';
import 'package:dio/dio.dart';

class ApiServicesImplementation implements ApiServices {
  Dio? _dio;

  ApiServicesImplementation() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );
    _dio = Dio(baseOptions);
  }

  @override
  Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    _dio!.options.headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    Response data = await _dio!.get(endPoint, queryParameters: queryParameters);
    return data;
  }

  @override
  Future<Response> post(
      {required String endPoint,
      Map<String, dynamic>? queryParameters,
      String? token,
      required Map<String, dynamic>? data}) async {
    _dio!.options.headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    return await _dio!.post(endPoint,
        queryParameters: queryParameters,
        data: data, onSendProgress: (int send, int total) {
      print('$send $total');
    });
  }

  @override
  Future<Response> delete({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    String? token,
    Map<String, dynamic>? data,
  }) async {
    _dio!.options.headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    return await _dio!.delete(
      endPoint,
      queryParameters: queryParameters,
      data: data,
    );
  }
}
