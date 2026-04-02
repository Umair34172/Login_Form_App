import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late String _email, _password;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Practice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // Email Field
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                onChanged: (value) {
                  _email = value;
                },
                validator: validateEmail,
              ),

              SizedBox(height: 20),

              // Password Field
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
                validator: validatePassword,
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Email: $_email");
                    print("Password: $_password");
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
