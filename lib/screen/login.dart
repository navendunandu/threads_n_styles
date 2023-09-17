import 'package:flutter/material.dart';
import 'package:threads_n_styles/screen/home.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 300,
                    child: Image.asset(
                      'assets/7515318.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your username";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      // if(_isDataMatched){
                      //   return null;
                      // }
                      // else {
                      //   return 'Error';
                      // }
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        checkLogin(context);
                      } else {
                        print("Validation Failed");
                      }
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void checkLogin(BuildContext ctx) {
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username == password) {
      // Goto Home
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const ScreenHome()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          duration: Duration(seconds: 10),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text("Username and Password Doesn't Match")));
    }
  }
}
