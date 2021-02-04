import 'package:github_searcher/domain/models/repository_list_response.dart';

abstract class GitRepoState {}

class GitRepoEmptyState extends GitRepoState {}

class GitRepoFetchingState extends GitRepoState {}

class GitRepoFetchedState extends GitRepoState {
  final RepositoryListResponse response;
  final String query;
  GitRepoFetchedState(this.response, {this.query});
}

class GitRepoErrorState extends GitRepoState {}
