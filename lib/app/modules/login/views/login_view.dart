import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Form(
      key: controller.formKey,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                hintText: "Email",
                icon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.password_outlined),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () => controller.signIn(),
              label: const Text(
                "Sign In",
              ),
              icon: const Icon(Icons.login_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_outline_outlined),
              label: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    )));
  }
}
