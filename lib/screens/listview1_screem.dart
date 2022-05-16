import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ["megaman", "boris", "ricardo", "miranda", "ayala"];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview1"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
          onTap: (){

          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
