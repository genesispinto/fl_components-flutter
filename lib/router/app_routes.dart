//AppRoues es una clase como propiedades estaticas, la cual se puede acceder sin necesidad de instanciar la clase
// Si no tiene un guion bajo AppRoutes quiere decir que se esta exportando
import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';



class AppRoutes {

  static const initialRoute = 'home';
  // Listado de opciones con la ruta definida
  static final menuOption = <MenuOption>[
    MenuOption(route: 'inputs',  name:'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'listview1',  name:'listview tipo 1', screen: const Listview1Screen(), icon: Icons.light_mode_sharp),
    MenuOption(route: 'listview2',  name:'listview tipo 2', screen: const Listview2Screen(), icon: Icons.monetization_on),
    MenuOption(route: 'alert',  name:'Alert Screen', screen: const AlertScreen(), icon: Icons.sim_card_alert_outlined),
    MenuOption(route: 'card',  name:'Card Screen', screen: const CardScreen(), icon: Icons.card_giftcard),
    MenuOption(route: 'avatar',  name:'Circle Avatar ', screen: const AvatarScreen(), icon: Icons.person),
    MenuOption(route: 'animated',  name:'Animated Container ', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'slider',  name:'Slider and Checks ', screen: const SliderScreen(), icon: Icons.check_box_outlined),
    MenuOption(route: 'Listview Builder',  name:'InfiniteScrol & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined)

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
      Map<String, Widget Function(BuildContext)> appRoutes ={};
          appRoutes.addAll({'home':(context) => const HomeScreen()});
        for(final option in menuOption){
          appRoutes.addAll({option.route:(context) => option.screen});
        }
      return appRoutes;
  }




//Si se quisiese trabajar con modelo de rutas se usaria algo asi
//  static Map<String, Widget Function(BuildContext)> routes = {
//         'home'     : ((context) => const HomeScreen()),
//         'listview1': ((context) => const Listview1Screen()),
//         'listview2': ((context) => const Listview2Screen()),
//         'alert'    : ((context) => const AlertScreen()),
//         'card'     : ((context) => const CardScreen())
        
//       };
 static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder:(context) => const AlertScreen()
        );
      }

}