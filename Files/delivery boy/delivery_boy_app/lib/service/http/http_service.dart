import 'package:dio/dio.dart';

abstract class HttpService {
  void init();
  Future<Response> getRequest({
    required String urlPath,
    Map<String, dynamic> data = const {},
    Map<String, dynamic> header = const {},
  });
  Future<Response> postRequest({
    required String urlPath,
    Map<String, dynamic> data = const {},
    Map<String, dynamic> header = const {},
  });
}
