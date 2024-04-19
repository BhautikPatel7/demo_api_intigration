import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SyncCustomSlider extends StatefulWidget {
  @override
  State<SyncCustomSlider> createState() => _SyncCustomSliderState();
}

class _SyncCustomSliderState extends State<SyncCustomSlider> {


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: SfRadialGauge(
          axes: <RadialAxis>[
                    // Create primary radial axis
                    RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      showLabels: false,
                      showTicks: false,
                      startAngle: 270,
                      endAngle: 270,
                      radiusFactor: 0.7,
                      axisLineStyle: AxisLineStyle(
                        thickness: 0.2,
                        color: Color.fromARGB(30, 40, 154, 162),
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      pointers: <GaugePointer>[
                        RangePointer(
                            value: 12,
                            width: 0.05,
                            pointerOffset: 0.07,
                            sizeUnit: GaugeSizeUnit.factor,
                            )
                      ],
                    ),
                    // Create secondary radial axis for segmented line
                    RadialAxis(
                      minimum: 0,
                      interval: 1,
                      maximum: 5,
                      showLabels: true,

                      showTicks: true,
                      showAxisLine: false,
                      tickOffset: -0.010,
                      offsetUnit: GaugeSizeUnit.factor,
                      minorTicksPerInterval: 0,
                      startAngle: 270,
                      endAngle: 270,
                      radiusFactor: 0.7,
                      majorTickStyle: MajorTickStyle(
                          length: 0.3,
                          thickness: 40,
                          lengthUnit: GaugeSizeUnit.factor,
                          color: Colors.white),
                    )
                  ]
        ),
      ),
    );
  }
}