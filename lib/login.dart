import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginPage = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: loginPage,
                  child: Center(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: 300,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: _usernameController,
                                decoration: const InputDecoration(
                                  hintText: 'Enter Username',
                                  label: Text('Username'),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Enter Password',
                                  errorBorder: UnderlineInputBorder(),
                                  label: Text('Password'),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll<EdgeInsets>(
                                      EdgeInsets.all(10)),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, HomePage.routeName);
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
