import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final opcions = const ['Hamburguesas', 'Tequeños',' Sushi', 'Sopas'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(
        children: [
          ...opcions.map((e) => ListTile(
            leading: const Icon(Icons.ac_unit_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            title:   Text(e),
           
          )
          ).toList(),
           const Divider()

         
        
        ],
      )
    );
  }
} 