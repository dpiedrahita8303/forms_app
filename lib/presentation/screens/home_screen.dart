import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children:  [
          ListTile(
            title: const Text('Cubits'),
            subtitle: const Text('Gestor de estado simple'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              context.push('/cubits');
            },
          ),
          ListTile(
            title: const Text('Bloc'),
            subtitle: const Text('Gestor de estado Bloc'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              context.push('/bloc');
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          ListTile(
            title: const Text('New User'),
            subtitle: const Text('Manejo de formularios'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              context.push('/new-user');
            },
          ),
          ListTile(
            title: const Text('New User'),
            subtitle: const Text('Formulario tradicional'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              context.push('/traditional-register');
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          ListTile(
            title: const Text('Stream'),
            subtitle: const Text('Stream Controller'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              context.push('/stream');
            },
          ),
        ]
      ),
    );
  }
}