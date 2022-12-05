import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes en Flutter')),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.accessibility_new_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {
            
          },
        ), 
        separatorBuilder:(_, __) => const Divider(), 
        itemCount: 10)
    );
  }
}