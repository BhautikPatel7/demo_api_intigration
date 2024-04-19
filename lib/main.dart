import 'dart:io';
import 'dart:typed_data';
import 'package:demo_api_intigration/Assignment_4/addintoarrays.dart';
import 'package:demo_api_intigration/Assignment_4/expenselist.dart';
import 'package:demo_api_intigration/assignemtn_work/Multi_circular_Slider.dart';
import 'package:demo_api_intigration/assignemtn_work/circular.dart';
import 'package:demo_api_intigration/assignemtn_work/custom.dart';
import 'package:demo_api_intigration/assignemtn_work/gfg.dart';
import 'package:demo_api_intigration/assignemtn_work/hey.dart';
import 'package:demo_api_intigration/assignemtn_work/syncgrg.dart';
import 'package:demo_api_intigration/temp/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      // home: visiableScreen(),
  //  home: MultiCircularSlider1(),
  // home: MyApp5(),
  // home: MyHomePagew(),
  // home: addDynamicButton(),
  // home: CircularSliderWidget(),
  // home: SyncCustomSlider(),
  // home: MyApp1(),
  // home: produclist(),
  home: Expenselist(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _image;
  
  final picker = ImagePicker();

  //Image Picker function to get image from gallery
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }

    });
  }

  //Image Picker function to get image from camera
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  //Show options to get image from camera or gallery
  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: Text('Camera'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              getImageFromCamera();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Column(
        children: [
          TextButton(
            child: Text('Select Image'),
            onPressed: showOptions,
          ),
          Center(
            child: _image == null ? Text('No Image selected') : Image.file(_image!),
          ),
        ],
      ),
    );
  }
}