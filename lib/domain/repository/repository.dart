import 'package:dio/dio.dart';
import 'package:github_searcher/domain/api/github_api_client.dart';
import 'package:github_searcher/domain/models/repository_list_response.dart';

class Repository {
  final GitHubApiClient _api = GitHubApiClient(Dio());

  Future<RepositoryListResponse> findRepositories(String query) async =>
      _api.searchRepositories(query: query);
}
