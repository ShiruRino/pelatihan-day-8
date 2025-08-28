import 'package:flutter/cupertino.dart';
import 'package:pendaftaran_app/layout/authenticated_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthenticatedLayout(body: Container(child: Text('Dashboard'),),);
  }
}