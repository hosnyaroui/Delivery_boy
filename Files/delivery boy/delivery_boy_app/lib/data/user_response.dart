import 'package:json_annotation/json_annotation.dart';

import 'package:delivery_boy_app/data/user.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  @JsonKey(name: "result")
  final User? user;
  final String? token;
  final String? message;

  UserResponse({
    this.user,
    this.token,
    this.message,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
