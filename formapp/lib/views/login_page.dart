import 'package:flutter/material.dart';
import 'package:formapp/views/register_page.dart';
import 'package:formapp/views/widgets/input_widget.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'Login page',
                style: TextStyle(fontSize: 30 * 0.99),
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
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18 * 0.90),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const RegisterPage());
                },
                child: Text(
                  'Register',
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
