// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryModel _$RepositoryModelFromJson(Map<String, dynamic> json) {
  return RepositoryModel(
    id: json['id'] as int,
    name: json['name'] as String,
    owner: OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
    updatedAt: DateTime.parse(json['updated_at'] as String),
    score: (json['score'] as num).toDouble(),
  );
}

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'updated_at': instance.updatedAt.toIso8601String(),
      'score': instance.score,
    };
