import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final opcions = const ['Hamburguesas', 'Tequeños',' Sushi', 'Sopas'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
            leading: const Icon(Icons.ac_unit_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            title:   Text(opcions[index]),
           
          ),
        separatorBuilder:(_, __) => const Divider(), 
        itemCount: opcions.length)
    );
  }
} 