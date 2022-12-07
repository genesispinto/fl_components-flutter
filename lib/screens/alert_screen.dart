import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
           content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10,),
            FlutterLogo(size: 50,)
          ]),
           actions: [
            TextButton(
              onPressed: () =>Navigator.pop(context), 
            child: const Text('Cancelar')),
             TextButton(
              onPressed: () =>Navigator.pop(context), 
            child: const Text('Ok'))
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder:(context) {
        return  AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10,),
            FlutterLogo(size: 50,)
          ]),
          actions: [
            TextButton(
              onPressed: () =>Navigator.pop(context), 
            child: const Text('Cancelar')),
             TextButton(
              onPressed: () =>Navigator.pop(context), 
            child: const Text('Ok'))
          ],
        );
      },);
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Alert Widget'),
      ),
      body:  Center(
         child: ElevatedButton(
          onPressed: () => !Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context),
           child: const Text('Mostrar Alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () =>Navigator.pop(context), ) ,
    );
  }
}