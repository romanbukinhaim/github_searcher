import 'package:flutter/material.dart';
import 'package:github_searcher/domain/models/repository_model.dart';
import 'package:github_searcher/generated/l10n.dart';
import 'package:github_searcher/theme/colors.dart';
import 'package:jiffy/jiffy.dart';

class RepoCard extends StatelessWidget {
  final RepositoryModel data;

  const RepoCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: AppColors.greyDF,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: AppColors.greyA6,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: AppColors.white,
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        data.score.round().toString(),
                        style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 30.0,
                  backgroundImage: NetworkImage(data.owner.avatar),
                ),
                const SizedBox(width: 6.0),
                Text(data.owner.login)
              ],
            ),
            Divider(color: AppColors.greyDF),
            RichText(
              text: TextSpan(
                text: "${Strings.current.updated}: ",
                style: TextStyle(color: AppColors.greyA6),
                children: [
                  TextSpan(
                    text: Jiffy(data.updatedAt).format("dd MMMM"),
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
