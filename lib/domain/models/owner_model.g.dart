// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) {
  return OwnerModel(
    login: json['login'] as String,
    avatar: json['avatar_url'] as String,
  );
}

Map<String, dynamic> _$OwnerModelToJson(OwnerModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar,
    };
