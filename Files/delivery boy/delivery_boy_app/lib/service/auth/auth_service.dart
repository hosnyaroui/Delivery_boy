import 'package:delivery_boy_app/data/user_request.dart';
import 'package:delivery_boy_app/data/user_response.dart';

abstract class AuthService {
  Future<UserResponse> login({required UserRequest request});
}
