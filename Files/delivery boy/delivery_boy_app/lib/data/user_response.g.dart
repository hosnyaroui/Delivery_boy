// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      user: json['result'] == null
          ? null
          : User.fromJson(json['result'] as Map<String, dynamic>),
      token: json['token'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'result': instance.user,
      'token': instance.token,
      'message': instance.message,
    };
