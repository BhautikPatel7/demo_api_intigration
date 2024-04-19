import 'package:demo_api_intigration/Assignment_4/addintoarrays.dart';
import 'package:flutter/material.dart';

class Expenselist extends StatelessWidget {

  List<Expenselistbuild> expenseelementlist = [
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
    Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('First List Tile Clicked'); },),
  Expenselistbuild(icons: Icons.abc, text: 'Title', expense: 12.5, datetime: DateTime.now(), ontap: () { print('Second List Tile Clicked'); },),
  

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children :[
          addDynamicButton(),
          SingleChildScrollView(child: Column(children: expenseelementlist,))
        ] ),
      )
    );
  }

}

class  Expenselistbuild extends StatelessWidget{
  final IconData icons;
  final String text;
  final double expense;
  final DateTime datetime;
  final VoidCallback ontap;

  const Expenselistbuild({ required this.icons, required this.text, required this.expense, required this.datetime, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        leading: Icon(icons),
        title: Text(text),
        trailing: Column(
          children: [
            Text('$expense*'),
            Text('${datetime.toIso8601String()}'),
          ],
        ),
      ),
    );
  }
}