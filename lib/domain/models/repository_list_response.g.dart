// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryListResponse _$RepositoryListResponseFromJson(
    Map<String, dynamic> json) {
  return RepositoryListResponse(
    totalCount: json['total_count'] as int,
    incompleteResults: json['incomplete_results'] as bool,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : RepositoryModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RepositoryListResponseToJson(
        RepositoryListResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
