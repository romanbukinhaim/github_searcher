import 'package:dio/dio.dart';
import 'package:github_searcher/domain/models/repository_list_response.dart';
import 'package:retrofit/retrofit.dart';

part 'github_api_client.g.dart';

@RestApi(baseUrl: "https://api.github.com")
abstract class GitHubApiClient {
  factory GitHubApiClient(Dio dio, {String baseUrl}) = _GitHubApiClient;

  @GET('/search/repositories')
  Future<RepositoryListResponse> searchRepositories({@Query('q') String query});
}
