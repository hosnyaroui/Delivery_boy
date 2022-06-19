import 'package:delivery_boy_app/data/user_response.dart';
import 'package:delivery_boy_app/data/user_request.dart';
import 'package:delivery_boy_app/service/auth/auth_service.dart';
import 'package:delivery_boy_app/service/http/http_service.dart';
import 'package:delivery_boy_app/service/http/http_service_impl.dart';

class AuthServiceImpl implements AuthService {
  HttpService httpService = HttpServiceImpl();
  @override
  Future<UserResponse> login({required UserRequest request}) async {
    httpService.init();
    final response = await httpService.postRequest(
      urlPath: "login",
      data: request.toJson(),
    );
    return UserResponse.fromJson(response.data);
  }
}
