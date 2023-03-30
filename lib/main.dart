import 'package:componentes_flutter/router/app_routes.dart';
import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     // home: ListView1Screen()
     initialRoute: AppRoutes.initialRoute,
     routes: AppRoutes.getAppRoutes(),
     onGenerateRoute: AppRoutes.onGenerateRoute ,
     theme: AppTheme.lightTheme,
    );
  }
}