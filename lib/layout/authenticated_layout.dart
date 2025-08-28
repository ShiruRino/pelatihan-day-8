import 'package:flutter/material.dart';

class AuthenticatedLayout extends StatelessWidget {
  final Widget body;
  // final Widget? drawer;
  final Widget? appBar;
  final Widget? floatingActionButton;
  // final Widget? bottomNavigationBar;
  const AuthenticatedLayout({
    super.key, required this.body, 
    // this.drawer, 
    this.appBar, 
    this.floatingActionButton, 
    // this.bottomNavigationBar
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: drawer, 
      appBar: AppBar(),
      body: body,
      floatingActionButton: floatingActionButton,
      // bottomNavigationBar: bottomNavigationBar,
    );
  }
}