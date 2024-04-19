
import 'package:demo_api_intigration/assignemtn_work/indicator.dart';
import 'package:flutter/material.dart';

  late AnimationController animationController;
 late Animation<double> animation;


class MyHomePagew extends StatefulWidget {
  const MyHomePagew({super.key,});

  // final String title;

  @override
  State<MyHomePagew> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagew> with SingleTickerProviderStateMixin{

  final maxprogess = 20.0;


 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController=AnimationController(vsync: this, duration: Duration(milliseconds: 1000));


    animation = Tween<double>(begin: 0,end: maxprogess).animate(animationController)
    ..addListener(() {
      setState(() {
        
      });
    });
  }



  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('demo'),
        ),
        body: 
        Center(
          child: Container(
            width: 200,
            height: 200,
            child: CustomPaint(
            
              painter: CircleProgress(
             icons: [Icons.abc,Icons.abc,Icons.abc,Icons.abc,Icons.abc],
                strokeWidth: 25,
                progressValues: [14,14,14,14,14],
                gap:22,
                progressColors: [Colors.green.shade100,Colors.green.shade200,Colors.green.shade300,Colors.green.shade400,Colors.green.shade500],
                
              ),
              child: Center(
                child: Text(
          'Content',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),

            );
  }
}