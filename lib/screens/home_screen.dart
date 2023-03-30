import 'package:componentes_flutter/models/menu_option.dart';
import 'package:componentes_flutter/router/app_routes.dart';
import 'package:componentes_flutter/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
         itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: Colors.purple),
          title: Text(menuOptions[i].name),
          onTap: (){
            //final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
            Navigator.pushNamed(context, menuOptions[i].route);
          },
         ),
         separatorBuilder: (_, __) => const Divider(),
         itemCount: menuOptions.length,
      ),
    );
  }
}