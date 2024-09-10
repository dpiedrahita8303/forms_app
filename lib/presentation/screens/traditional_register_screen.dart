import "package:flutter/material.dart";
import "package:forms_app/presentation/widgets/form/normal_form.dart";

class TraditionalRegisterScreen extends StatelessWidget {
  const TraditionalRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
      ),
      body: const NormalForm(),
    );
  }
}