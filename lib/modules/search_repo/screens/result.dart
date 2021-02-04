import 'package:flutter/material.dart';
import 'package:github_searcher/domain/models/repository_list_response.dart';
import 'package:github_searcher/generated/l10n.dart';
import 'package:github_searcher/modules/search_repo/widgets/repo_card.dart';
import 'package:github_searcher/theme/colors.dart';
import 'package:github_searcher/widgets/top_appbar.dart';

class ResultScreen extends StatelessWidget {
  final RepositoryListResponse listResponse;
  final String query;
  final Function onBackPressed;

  const ResultScreen(this.listResponse, {this.query, this.onBackPressed});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await onBackPressed();
        return false;
      },
      child: Scaffold(
          appBar: TopAppBar(
            title: Strings.current.search_result,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "${Strings.current.by_request.toUpperCase()}: ",
                      style: TextStyle(color: AppColors.greyA6),
                      children: [
                        TextSpan(
                          text: "“${query ?? ""}”",
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text:
                              "\n${Strings.current.founded.toUpperCase()}: ${listResponse.totalCount}",
                          style: TextStyle(color: AppColors.greyA6),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ...listResponse.items.map((e) => RepoCard(e)).toList(),
              ],
            ),
          )),
    );
  }
}
