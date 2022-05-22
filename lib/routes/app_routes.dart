import 'package:flutter/material.dart';
import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoutes = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', icon:  Icons.home_filled, name: 'Home Screen', screen: const HomeScreen()),
    // MenuOptions(route: 'listview1', icon:  Icons.list, name: 'List view 1', screen: const ListView1Screen()),
    MenuOptions(route: 'alert', icon:  Icons.message, name: 'Alert', screen: const AlertScreen()),
    MenuOptions(route: 'car', icon:  Icons.image, name: 'Card', screen: const CarScreen()),
    MenuOptions(route: 'avatar', icon:  Icons.tag_faces_rounded, name: 'avatar', screen: const AvatarScreen()),
    MenuOptions(route: 'animated', icon:  Icons.animation, name: 'animated', screen: const AnimatedScreen()),
    MenuOptions(route: 'inpus', icon:  Icons.label_rounded, name: 'inputs', screen: const InputsScreen()),
    MenuOptions(route: 'slider', icon:  Icons.task_alt_outlined, name: 'Slider & Check', screen: const SliderScreen()),
    MenuOptions(route: 'listBuilder', icon:  Icons.list, name: 'Infitity Scroll and Push Refresh', screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
   Map<String, Widget Function(BuildContext)> appRoutes ={} ;
   for (MenuOptions option in menuOptions) {
     appRoutes.addAll({option.route : (BuildContext context) => option.screen });
   }
   return appRoutes;
   
  }  

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'car': (BuildContext context) => const CarScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  // };
}
