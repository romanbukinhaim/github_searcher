import 'package:json_annotation/json_annotation.dart';

part 'owner_model.g.dart';

@JsonSerializable(explicitToJson: false)
class OwnerModel {
  final String login;

  @JsonKey(name: 'avatar_url', nullable: true)
  final String avatar;

  const OwnerModel({
    this.login,
    this.avatar,
  });

  factory OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);
}
