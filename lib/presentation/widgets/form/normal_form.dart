import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NormalForm extends StatefulWidget {
  const NormalForm({super.key});


  @override
  NormalFormState createState() => NormalFormState();
  
}

class NormalFormState extends State<NormalForm> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para los campos del formulario
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
    // Limpiar los controladores cuando el widget se elimine
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validar y obtener datos del formulario
                if (_formKey.currentState!.validate()) {
                  // Obtener datos del formulario
                  final name = _nameController.text;
                  final email = _emailController.text;
                  final password = _passwordController.text;
      
                  // Hacer algo con los datos
                  print('Name: $name');
                  print('Email: $email');
                  print('Password: $password');
                  context.go('/');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
