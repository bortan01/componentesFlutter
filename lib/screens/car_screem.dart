import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
   
  const CarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text("card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
           CustomCardType1(),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://somoskudasai.com/wp-content/uploads/2019/04/To-Love-Ru-Darkness-destacado-1000x600.jpg',),
           SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://www.anmosugoi.com/wp-content/uploads/2019/05/228077-scaled.jpg',),
           SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ4lk9pMpgY-kN9iWq-2RIHeqCj63F8vKvYT3P2wZI3oLteq2RYU7P_PRKm6w8rsx6WeE&usqp=CAU',),
           SizedBox(height: 10),

        ],
      ),
    );
  }
}
