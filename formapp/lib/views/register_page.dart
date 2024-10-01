import 'package:flutter/material.dart';
import 'package:formapp/views/login_page.dart';
import 'package:formapp/views/widgets/input_widget.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Register page',
                style: TextStyle(fontSize: 30 * 0.99),
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                hintText: 'Name',
                obscureText: false,
                controller: _nameController,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                hintText: 'Username',
                obscureText: false,
                controller: _usernameController,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                hintText: 'Email',
                obscureText: false,
                controller: _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              InputWidget(
                hintText: 'Password',
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15)),
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18 * 0.90),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: size * 0.040, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
