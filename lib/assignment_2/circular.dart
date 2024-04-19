import 'package:flutter/material.dart';

class CircularProgressWidget extends StatefulWidget {
  final double progress;
  const CircularProgressWidget({super.key, required this.progress});

  @override
  State<CircularProgressWidget> createState() => _CircularProgressWidgetState();
}

class _CircularProgressWidgetState extends State<CircularProgressWidget> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  Animation<double>? progresstweenanimation;

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 500));
    progresstweenanimation = Tween<double>(begin: 0,end: widget.progress).animate(animationController)..addListener(() {setState(() {
      
    });});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}