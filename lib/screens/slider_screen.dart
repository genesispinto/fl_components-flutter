import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks')
      ),
      body:Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled 
            ? 
            ((value) {
            _sliderValue = value;
            setState(() {});
            })
           : null),

          /* Checkbox(
            value: _sliderEnabled, 
            onChanged: ((value) {
              _sliderEnabled =value ?? true;
              setState(() {});
            })),

          Switch(
            value: _sliderEnabled , 
            onChanged: ((value) {
              _sliderEnabled =value;
              setState(() {});
            })),   */
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ((value) {
              _sliderEnabled =value ?? true;
              setState(() {});
            }) ),
            SwitchListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              subtitle: const Text('Habilitar Slider') ,
              value: _sliderEnabled, 
              onChanged: ((value) {
              _sliderEnabled =value ?? true;
              setState(() {});
            }) ),
          Image(
             fit: BoxFit.contain,
             width: _sliderValue,
             image: const NetworkImage('https://1.bp.blogspot.com/-0oboksEmze0/YKat2N_JfzI/AAAAAAAAGXE/8IONoVeWYis2WcvInobuqV-mEjFN_XUPACLcBGAsYHQ/s600/mujer-maravilla-ilustracion-png-transparente.png'))
      ]),
    );
  }
}