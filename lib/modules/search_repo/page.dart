import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_searcher/widgets/loading_screen.dart';

import 'bloc/bloc.dart';
import 'bloc/event.dart';
import 'bloc/state.dart';
import 'screens/result.dart';
import 'screens/search.dart';

class SearchRepoPage extends StatefulWidget {
  @override
  _SearchRepoPageState createState() => _SearchRepoPageState();
}

class _SearchRepoPageState extends State<SearchRepoPage> {
  GitRepoBloc bloc;
  TextEditingController controller;

  @override
  void initState() {
    bloc = GitRepoBloc();
    controller = TextEditingController();
    controller.text = "jiffy";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: bloc,
      builder: (context, state) {
        if (state is GitRepoFetchingState)
          return LoadingScreen();
        else if (state is GitRepoFetchedState)
          return ResultScreen(
            state.response,
            query: state.query,
            onBackPressed: () => bloc.add(ReposClearEvent()),
          );
        else
          return SearchScreen(
            controller: controller,
            onDone: (val) => bloc.add(FetchRepoByQueryEvent(val)),
          );
      },
    );
  }
}
