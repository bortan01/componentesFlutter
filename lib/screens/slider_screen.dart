import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _isSliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Slider and Check"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
              value: _sliderValue,
              min: 50,
              max: 500,
              activeColor: AppTheme.primary,
              onChanged: _isSliderEnable
                  ? (value) => setState(() {
                        _sliderValue = value;
                      })
                  : null,
            ),
         
              CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar"),
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ?? true;
              }),
            ),
         
              SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar"),
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ;
              }),
            ),
            SingleChildScrollView(
              child: FadeInImage(
                width: _sliderValue,
                placeholder: const AssetImage('assets/gif/jar-loading.gif'),
                fit: BoxFit.contain,
                image: const NetworkImage(
                    'https://sm.ign.com/t/ign_es/news/t/the-batman/the-batman-sequel-announced-with-robert-pattinson-at-cinemac_jspq.1280.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
