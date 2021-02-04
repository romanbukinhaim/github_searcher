import 'package:flutter/material.dart';
import 'package:github_searcher/generated/l10n.dart';
import 'package:github_searcher/theme/colors.dart';
import 'package:github_searcher/widgets/top_appbar.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onDone;
  final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: const BorderSide(color: AppColors.greyDF),
  );

  SearchScreen({this.controller, this.onDone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: TopAppBar(
        title: Strings.current.search,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(top: 50),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.top,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              enabledBorder: inputBorder,
              focusedBorder: inputBorder,
              suffix: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: AppColors.blue58,
                onPressed: () {
                  if (controller.text.isNotEmpty) onDone(controller.text);
                },
                child: Text(
                  "Найти",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
