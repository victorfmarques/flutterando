import 'package:flutter/material.dart';

import 'home_page.dart';

const _inputEmailLabel = 'Email';
const _inputPasswordLabel = 'Password';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: _inputEmailLabel,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: _inputPasswordLabel,
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                child: Text('Sign In'),
                onPressed: () {
                  if (_emailController.text == 'victorfmarques@outlook.com' &&
                      _passwordController.text == '123') {
                    debugPrint('Usu??rio autenticado');
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    debugPrint('Credenciais incorretas');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
