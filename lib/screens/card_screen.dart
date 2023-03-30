import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:componentes_flutter/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import 'package:componentes_flutter/widgets/custom_card_type_1.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardWidget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: const[
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imgUrl: 'https://www.hdwallpaper.nu/wp-content/uploads/2021/02/league_of_legends-11-scaled.jpg',name: 'ah se mamo',)
        ],
      ),
    );
  }
}

