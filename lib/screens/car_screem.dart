import 'package:componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://www.altonivel.com.mx/wp-content/uploads/2018/05/avengers.jpg',
            name: 'infinity war',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://as01.epimg.net/meristation/imagenes/2021/03/12/reportajes/1615546576_319724_1615546812_noticia_normal.jpg',
            name: 'End Game',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://depor.com/resizer/ybB3FV32IXH5lMN3nUKXp-NvOIw=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/P7MY7RAJFNCCTCSKHYIHSKCHBA.jpg',
            name: 'Illuminati',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
