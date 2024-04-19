import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';


class MultiCircularSlider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children:[
              MultiCircularSlider(
              size: MediaQuery.of(context).size.width * 0.8,
              progressBarType: MultiCircularSliderType.circular,
              values:  [0.25,0.05],
              colors: const [Color(0xFFFD1960), Colors.white],
              // showTotalPercentage: true,
              label: 'This is label text',
              innerWidget: SizedBox(width: 5,),
              animationDuration: const Duration(milliseconds: 1000),
              animationCurve: Curves.easeInOutCirc,
              innerIcon: const Icon(Icons.integration_instructions),
              trackColor: Colors.white,
              progressBarWidth: 36.0,
              trackWidth: 36.0,
              labelTextStyle: const TextStyle(),
              percentageTextStyle: const TextStyle(),
            ),
             MultiCircularSlider(
              size: MediaQuery.of(context).size.width * 0.8,
              progressBarType: MultiCircularSliderType.circular,
              values:  [0.25,0.05,0.25],
              colors: const [Color(0xFFFD1960), Colors.white,Colors.black],
              // showTotalPercentage: true,
              label: 'This is label text',
              animationDuration: const Duration(milliseconds: 1000),
              animationCurve: Curves.easeInOutCirc,
              innerIcon: const Icon(Icons.integration_instructions),
              trackColor: Colors.white,
              progressBarWidth: 36.0,
              trackWidth: 36.0,
              labelTextStyle: const TextStyle(),
              percentageTextStyle: const TextStyle(),
                         ),
            ], 
          ),
        ),
      ),
    );
  }
}
