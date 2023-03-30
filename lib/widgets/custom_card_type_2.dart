import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String? name;

  const CustomCardType2({super.key,required this.imgUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/gato.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name!)
            )
        ],
      ),
    );
  }
}