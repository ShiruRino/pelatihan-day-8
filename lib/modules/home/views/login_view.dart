import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pendaftaran_app/layout/app_main_layout.dart';
import 'package:pendaftaran_app/modules/auth/controller/auth_controller.dart';
// import 'package:pendaftaran_app/layout/authenticated_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final TextEditingController emailC = TextEditingController();
    final TextEditingController passC = TextEditingController();
    return AppMainLayout(body: Center(child: 
    SingleChildScrollView( padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.purple.shade100,
          child: const Icon(
            Icons.show_chart,
            size: 50,
            color: Colors.purple,
          ),
        ), 
        const Text("Welcome Back!",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        const SizedBox(height: 30),
        TextField(
          controller: emailC,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email_outlined),
            hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: passC,
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_outline),
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 25,),
        Obx(()=>ElevatedButton(onPressed: authController.isLoading.value ? null : () {
          authController.login(emailC.text.trim(), passC.text.trim());
        }, child: authController.isLoading.value ? const CircularProgressIndicator(color: Colors.white,) : const Text('Login')))
      ],
    )),
    
    ));   
    }
}