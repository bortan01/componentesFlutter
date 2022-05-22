import 'dart:io';
import 'package:componentes/routes/app_routes.dart';
import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
HttpOverrides.global = MyHttpOverrides();
return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes.initialRoutes,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.darkTheme,
    );
  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}