import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_searcher/domain/models/repository_list_response.dart';
import 'package:github_searcher/domain/repository/repository.dart';

import 'event.dart';
import 'state.dart';

class GitRepoBloc extends Bloc<GitRepoEvent, GitRepoState> {
  final Repository _repository = Repository();

  GitRepoBloc() : super(GitRepoEmptyState());

  @override
  Stream<GitRepoState> mapEventToState(GitRepoEvent event) async* {
    yield GitRepoFetchingState();
    // await Future.delayed(Duration(seconds: 1));
    RepositoryListResponse response;
    String query;
    try {
      if (event is FetchRepoByQueryEvent) {
        query = event.query;
        response = await _repository.findRepositories(query);
      }
      if (response == null) {
        yield GitRepoEmptyState();
      } else {
        yield GitRepoFetchedState(response, query: query);
      }
    } catch (ex) {
      yield GitRepoErrorState();
    }
  }
}
