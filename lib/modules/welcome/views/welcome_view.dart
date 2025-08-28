import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendaftaran_app/layout/app_main_layout.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppMainLayout(body: Center(child: Column(
      children: [
        Text('Welcome'),
        ElevatedButton(onPressed: () {
          Get.toNamed('/login');
        }, child: const Text('Get Started'))
      ],
    )
    ));
  }
}