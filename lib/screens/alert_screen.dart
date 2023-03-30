import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogIOS(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este es el contenido de la alerta'),
              SizedBox(),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
                ),
              TextButton(
              onPressed: ()=>Navigator.pop(context), 
              child: const Text('OK'))
            ],
            
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Título'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este es el contenido de la alerta'),
              SizedBox(),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')
                ),
              TextButton(
              onPressed: ()=>Navigator.pop(context), 
              child: const Text('OK'))
            ],
            
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: ElevatedButton(
        onPressed: () => Platform.isAndroid
        ? displayDialogAndroid(context)
        :displayDialogIOS(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
        ),
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.close),
    ),
      );
  }
}