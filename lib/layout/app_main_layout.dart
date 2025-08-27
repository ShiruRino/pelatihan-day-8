import 'package:flutter/material.dart';

class AppMainLayout extends StatelessWidget {
  final Widget body;
  // final Widget drawer;
  // final Widget appBar;
  // final Widget floatingActionButton;
  // final Widget buttonNavigationBar;
  const AppMainLayout({
    super.key,
    required this.body,
    // required this.drawer,
    // required this.appBar,
    // required this.floatingActionButton,
    // required this.buttonNavigationBar
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: body,
    );
  }
}