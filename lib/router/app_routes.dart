import 'package:componentes_flutter/models/menu_option.dart';
import 'package:componentes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute= 'home';

  static final menuOptions =<MenuOption>{
    //MenuOption(route: 'home', name: 'Screen Home', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'listview1', name: 'List View 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'List View 2', screen: const ListView2Screen(), icon: Icons.list_rounded ),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined ),
    MenuOption(route: 'animated', name: 'Animated container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'input', name: 'Text Inputs', screen: const InputScreen(), icon: Icons.input_rounded),
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)>appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});
    
    for(final option in menuOptions){
      appRoutes.addAll({option.route :(BuildContext context)=> option.screen});
    }
    return appRoutes;
  }

 /* static Map<String, Widget Function(BuildContext)> routes ={
    'home': (BuildContext context)=> const HomeScreen(),
    'listview1': (BuildContext context)=> const ListView1Screen(),
    'listview2': (BuildContext context)=> const ListView2Screen(),
    'alert': (BuildContext context)=> const AlertScreen(),
    'card': (BuildContext context)=> const CardScreen(),
  };
*/
  static Route<dynamic>? onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
      builder: (context)=> const AlertScreen()
      );
  }
}