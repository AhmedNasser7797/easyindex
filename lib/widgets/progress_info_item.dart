import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:fluttericon/mfg_labs_icons.dart';

class ProgressInfoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleCircularSlider(
          100,
          20,
          height: 60,
          width: 60,
          baseColor: Color(0xffc7eef5),
          handlerColor: Color(0xff03dac6),
          selectionColor: Color(0xff03dac6),
          handlerOutterRadius: 5,
          showHandlerOutter: false,
          showRoundedCapInSelection: false,
          sliderStrokeWidth: 5,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                MfgLabs.fire,
                color: Color(0xff03dac6),
                size: 30,
              ),
            ],
          ),
        ),

        Text('1.111',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),

        Text('steps',

        ),
      ],
    );
  }
}
