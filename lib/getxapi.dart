import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GetxApicall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: [
    ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return Container(
        child: Column(children: [
          Image.network(''),
          Text('name'),
          Text('rating'),
          Text('price')
        ],),
      );
    },)
  ],
   )
    );
  }
}