
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home': ((context) => const HomeScreen()),
        'listview1': ((context) => const Listview1Screen()),
        'listview2': ((context) => const Listview2Screen()),
        'alert': ((context) => const AlertScreen()),
        'card': ((context) => const CardScreen())
        
      },
    );
  }
}