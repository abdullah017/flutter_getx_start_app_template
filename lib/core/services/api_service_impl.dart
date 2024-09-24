import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'api_service.dart';

class ApiServiceImpl implements ApiService {
  final Dio dio;

  ApiServiceImpl({required this.dio});

  @override
  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      // Handle Dio errors
      rethrow;
    }
  }

  // Implement other methods (post, put, delete) similarly
}
