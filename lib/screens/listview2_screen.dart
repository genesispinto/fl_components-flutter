import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final opcions = const ['Hamburguesas', 'Tequeños',' Sushi', 'Sopas'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Listview tipo 2')),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body:
     /*  ListView.separated(
        itemBuilder:(context, index) {
          return Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                                  opcions[index],
                                  style:const TextStyle(fontSize: 32) )
                        )
          );
        },
         separatorBuilder:(context, index) => const Divider( height: 3, color: Colors.blue) , 
         itemCount:opcions.length) */
       ListView.separated(
        itemBuilder:(context, index) => ListTile(
            leading: const Icon(Icons.ac_unit_outlined),
            trailing: const Icon(Icons.arrow_forward_ios),
            title:   Text(opcions[index]),
            onTap:() {
              
            },
          ),
        separatorBuilder:(_, __) => const Divider(), 
        itemCount: opcions.length)


    );
  }
} 