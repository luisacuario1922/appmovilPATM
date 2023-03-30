import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: const Text('Titulo del CardWidget'),
            subtitle: const Text('Lorem Ipsum is simpy dummy text of the.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar')
                  ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Ok')
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}