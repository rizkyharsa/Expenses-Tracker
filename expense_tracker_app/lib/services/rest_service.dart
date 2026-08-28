import 'package:dio/dio.dart';
import 'package:expense_tracker_app/utility/constants/constant.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestService {
  // Add your methods for making REST API calls here
  static final RestService _instance = RestService._internal();
  factory RestService() => _instance;

  late final Dio _dio;

  Dio get dio => _dio;

  RestService._internal() {
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: connectionTimeout),
      receiveTimeout: const Duration(milliseconds: receiveTimeout),
      contentType: 'application/json;charset=utf-8',
    );
    _dio = Dio(options);

    if (foundation.kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
        ),
      );
    }
  }
}
