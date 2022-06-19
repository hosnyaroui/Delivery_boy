import 'package:dio/dio.dart';
import 'package:delivery_boy_app/service/http/http_service.dart';

class HttpServiceImpl implements HttpService {
  late Dio dio;
  @override
  Future<Response> getRequest({
    required String urlPath,
    Map<String, dynamic> data = const {},
    Map<String, dynamic> header = const {},
  }) async {
    return await dio.get(
      urlPath,
      queryParameters: data,
      options: Options(
        headers: header,
      ),
    );
  }

  @override
  Future<Response> postRequest({
    required String urlPath,
    Map<String, dynamic> data = const {},
    Map<String, dynamic> header = const {},
  }) async {
    return await dio.post(
      urlPath,
      data: data,
    );
  }

  @override
  void init() {
    dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:4000/"));
  }
}
