import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TopAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          title?.toUpperCase() ?? "",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
