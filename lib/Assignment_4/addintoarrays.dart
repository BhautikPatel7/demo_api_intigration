import 'package:flutter/material.dart';

class addDynamicButton extends StatelessWidget {
  List<CraeateCustomButton> addbuttonlist = [
    CraeateCustomButton(
      bgcolor: Colors.black,
      onclick: () => print('Overview Clicked'),
      title: 'Overview',
      textcolor: Colors.white,
    ),
    CraeateCustomButton( 
      bgcolor: Colors.green,
      onclick: () => print('Food and dining Clicked'),
      title: 'Food and dining',
      textcolor: Colors.black,
    ),
    CraeateCustomButton(
      bgcolor: Colors.greenAccent,
      onclick: () => print('Health and Fitness Clicked'),
      title: 'Health and Fitness',
      textcolor: Colors.black,
    ),
    CraeateCustomButton(
      bgcolor: Colors.blue,
      onclick: () => print('Travel Clicked'),
      title: 'Travel',
      textcolor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: addbuttonlist,
            ),
          ),
        ));
  }
}

class CraeateCustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onclick;
  final Color bgcolor;
  final Color textcolor;

  CraeateCustomButton(
      {required this.title,
      required this.onclick,
      required this.bgcolor,
      required this.textcolor});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          child: ElevatedButton(
            onPressed: onclick,
            style:
                ButtonStyle(backgroundColor: MaterialStatePropertyAll(bgcolor)),
            child: Text(
              title,
              style: TextStyle(
                  color: textcolor, fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }
}
