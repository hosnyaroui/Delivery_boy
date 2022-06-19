import 'package:json_annotation/json_annotation.dart';

import 'package:delivery_boy_app/data/user.dart';

part 'user_request.g.dart';

@JsonSerializable()
class UserRequest {
  final User user;
  UserRequest({
    required this.user,
  });

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserRequestToJson(this);
}
