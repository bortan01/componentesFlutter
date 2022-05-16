// import 'package:componentes/screens/screens.dart';
import 'package:componentes/routes/app_routes.dart';
import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("componentes en flutter"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>  ListTile(
            title: Text( AppRoutes.menuOptions[index].name),
            leading:  Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __)=> const Divider() ,
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
