import 'package:flutter/material.dart';

class MenuOption{
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;
  //Las llaves de menu option sirven para que el  usuario pueda enviar los argumentos en cualquier posicion
  // y la palabra required para que no sea opcional el envio de los argumentos
  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen});
  }