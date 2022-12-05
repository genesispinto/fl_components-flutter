import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';


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
          leading: Icon(AppRoutes.menuOption[index].icon, color: AppTheme.primary),
          title: Text(AppRoutes.menuOption[index].name),
          onTap: () {
            /* final route = MaterialPageRoute(builder:(context) => const Listview2Screen(),);
            Navigator.pushReplacement(context, route); */
            Navigator.pushNamed(context, AppRoutes.menuOption[index].route);
            //push.Named solo necesita recibir como argumento alguna ruta valida establecida
          },
        ), 
        separatorBuilder:(_, __) => const Divider(), 
        itemCount: AppRoutes.menuOption.length)
    );
  }
}