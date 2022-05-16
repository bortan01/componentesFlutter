import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("avatar"),
       actions:  [
         Container(
           margin: const EdgeInsets.only(right: 10),
           child:  CircleAvatar(
             backgroundColor: Colors.green[900],
             child: const Text("sl"),
           ),
         )
       ],
       ),
      body: const Center(
         child: CircleAvatar(
           radius: 110,
           backgroundImage: NetworkImage("https://phantom-marca.unidadeditorial.es/965641e78e7a7af1dcf0a3eccb6dabd9/resize/660/f/webp/assets/multimedia/imagenes/2022/04/25/16508822676282.jpg"),
         )
      ),
    );
  }
}