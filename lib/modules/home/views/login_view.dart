import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pendaftaran_app/layout/app_main_layout.dart';
// import 'package:pendaftaran_app/layout/authenticated_layout.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock_outline),
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {

            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ), 
            child: const Text('Login', style: TextStyle(fontSize: 16),
            ),
            ),
        ),
      ],
    )),
    
    ));   
    }
}