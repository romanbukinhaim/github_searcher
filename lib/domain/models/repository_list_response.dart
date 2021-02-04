import 'package:github_searcher/domain/models/repository_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository_list_response.g.dart';

@JsonSerializable(explicitToJson: false)
class RepositoryListResponse {
  @JsonKey(name: 'total_count', nullable: false)
  final int totalCount;

  @JsonKey(name: 'incomplete_results', nullable: false)
  final bool incompleteResults;

  final List<RepositoryModel> items;

  const RepositoryListResponse({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  factory RepositoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$RepositoryListResponseFromJson(json);
}
