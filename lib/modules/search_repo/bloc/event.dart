abstract class GitRepoEvent {}

class FetchRepoByQueryEvent extends GitRepoEvent {
  final String query;
  FetchRepoByQueryEvent(this.query);
}

class ReposClearEvent extends GitRepoEvent {}
