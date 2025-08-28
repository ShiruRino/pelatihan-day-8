import 'package:flutter/material.dart';
import 'package:pendaftaran_app/widgets/app_footer.dart';

class AppMainLayout extends StatelessWidget {
  final Widget body;
  // final Widget? drawer;
  final Widget? appBar;
  final Widget? floatingActionButton;
  // final Widget? bottomNavigationBar;
  const AppMainLayout({
    super.key,
    required this.body,
    // this.drawer,
    this.appBar,
    this.floatingActionButton,
    // this.bottomNavigationBar
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: body),
        Divider(),
        AppFooter()
      ],
    ),
    floatingActionButton: floatingActionButton,
    );
  }
}