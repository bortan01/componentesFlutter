import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isSliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
            Checkbox(
              
              activeColor: AppTheme.primary,
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ?? true;
              }),
            ),
              CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("habilidat"),
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ?? true;
              }),
            ),
              Switch.adaptive(
              activeColor: AppTheme.primary,
        
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ;
              }),
            ),
              SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text("habilidat"),
              value: _isSliderEnable,
              onChanged: (value) => setState(() {
                _isSliderEnable = value ;
              }),
            ),
            const AboutListTile(),
            SingleChildScrollView(
              child: Image(
                fit: BoxFit.contain,
                width: _sliderValue,
                image: const NetworkImage(
                    'https://areajugones.sport.es/wp-content/uploads/2020/08/to-love-ru-2.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
