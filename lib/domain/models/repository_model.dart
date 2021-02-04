import 'package:github_searcher/domain/models/owner_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable(explicitToJson: false)
class RepositoryModel {
  @JsonKey(name: 'id', nullable: false)
  final int id;

  @JsonKey(name: 'name', nullable: false)
  final String name;

  @JsonKey(name: 'owner', nullable: false)
  final OwnerModel owner;

  @JsonKey(name: 'updated_at', nullable: false)
  final DateTime updatedAt;

  @JsonKey(name: 'score', nullable: false)
  final double score;

  const RepositoryModel({
    this.id,
    this.name,
    this.owner,
    this.updatedAt,
    this.score,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) => _$RepositoryModelFromJson(json);
}
